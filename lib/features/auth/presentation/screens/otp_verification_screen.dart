import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_button.dart';
import 'package:foodie/core/widgets/app_snackbar.dart';
import 'package:foodie/core/widgets/custom_app_bar.dart';
import 'package:foodie/features/auth/data/models/auth_state.dart';
import 'package:foodie/features/auth/data/models/otp_args.dart';
import 'package:foodie/features/auth/presentation/providers/auth_notifier.dart';
import 'package:go_router/go_router.dart';

class OtpVerificationScreen extends ConsumerStatefulWidget {
  final OtpArgs args;

  const OtpVerificationScreen({super.key, required this.args});

  @override
  ConsumerState<OtpVerificationScreen> createState() =>
      _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends ConsumerState<OtpVerificationScreen> {
  // ── Controllers ────────────────────────────────────────────────────────────
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());

  // ── Focus Nodes ────────────────────────────────────────────────────────────
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  // ── Validation ─────────────────────────────────────────────────────────────
  bool _isOtpValid = false;
  //final bool _isLoading = false;

  // ── Timer ──────────────────────────────────────────────────────────────────
  static const int _timerDuration = 120; // 2 minutes
  int _secondsRemaining = _timerDuration;
  bool _canResend = false;
  Timer? _timer;

  // ── Lifecycle ──────────────────────────────────────────────────────────────
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    for (final f in _focusNodes) {
      f.dispose();
    }
    _timer?.cancel();
    super.dispose();
  }

  // ── Timer Logic ────────────────────────────────────────────────────────────
  void _startTimer() {
    _timer?.cancel();
    setState(() {
      _secondsRemaining = _timerDuration;
      _canResend = false;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        timer.cancel();
        setState(() => _canResend = true);
      } else {
        setState(() => _secondsRemaining--);
      }
    });
  }

  String get _timerText {
    final minutes = _secondsRemaining ~/ 60;
    final seconds = _secondsRemaining % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  // ── OTP Logic ──────────────────────────────────────────────────────────────
  void _onOtpChanged(String value, int index) {
    if (value.length == 1) {
      if (index < 3) {
        _focusNodes[index + 1].requestFocus();
      } else {
        _focusNodes[index].unfocus();
      }
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
    _checkOtpValid();
  }

  void _checkOtpValid() {
    final otp = _controllers.map((c) => c.text).join();
    setState(() => _isOtpValid = otp.length == 4);
  }

  String get _fullOtp => _controllers.map((c) => c.text).join();

  // ── Resend ─────────────────────────────────────────────────────────────────
  void _onResend() {
    if (!_canResend) return;
    for (final c in _controllers) {
      c.clear();
    }
    _focusNodes[0].requestFocus();
    setState(() => _isOtpValid = false);
    _startTimer();
    // TODO: call resend OTP API via Riverpod notifier
    AppSnackbar.show(
      context,
      message: 'A new code has been sent to ${widget.args.destinationLabel}',
      type: SnackbarType.info,
    );
  }

  // ── Submit ─────────────────────────────────────────────────────────────────
  void _onContinue() {
    if (!_isOtpValid) return;
    ref
        .read(authProvider.notifier)
        .otpVerify(code: _fullOtp, flow: widget.args.flow);
    switch (widget.args.flow) {
      case OtpFlow.forgotPassword:
        context.pushNamed('reset-password');
      case OtpFlow.register:
        context.pushNamed('upcoming'); // placeholder until profile setup exists
      case OtpFlow.phoneVerification:
        context.pushNamed('upcoming');
    }
  }

  // ── Build ──────────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final authState = ref.watch(authProvider);

    ref.listen(authProvider, (previous, next) {
      next.whenOrNull(
        error: (message) => AppSnackbar.show(context,
            message: message, type: SnackbarType.error),
        otpVerified: () {
          switch (widget.args.flow) {
            case OtpFlow.forgotPassword:
              context.pushNamed('reset-password');
            case OtpFlow.register:
              context.pop(true);
            case OtpFlow.phoneVerification:
              context.pushNamed('upcoming');
          }
        },
      );
    });

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: CustomAppBar(title: 'Foodie', showBack: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.spaceMD),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: AppDimensions.spaceXXL),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ── Title ───────────────────────────────────────────
                        Text(
                          _screenTitle,
                          style: textTheme.displayLarge,
                        ),
                        const SizedBox(height: AppDimensions.spaceSM),

                        // ── Subtitle ────────────────────────────────────────
                        Text(
                          'Enter the 4-digit code sent to ${widget.args.destinationLabel}',
                          style: textTheme.bodyLarge,
                        ),
                        const SizedBox(height: AppDimensions.spaceLG),

                        // ── OTP Boxes ───────────────────────────────────────
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(4, (index) {
                            return _OtpBox(
                              controller: _controllers[index],
                              focusNode: _focusNodes[index],
                              onChanged: (value) => _onOtpChanged(value, index),
                            );
                          }),
                        ),
                        const SizedBox(height: AppDimensions.spaceMD),

                        // ── Timer + Resend ──────────────────────────────────
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _canResend
                                  ? 'Didn\'t get a code? '
                                  : 'Resend code in $_timerText',
                              style: textTheme.bodyMedium,
                            ),
                            if (_canResend)
                              TextButton(
                                onPressed: _onResend,
                                child: Text(
                                  'Resend',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ── Button ─────────────────────────────────────────────────────
              AppButton(
                  label: 'Continue',
                  isEnabled: _isOtpValid,
                  isLoading: authState.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  onPressed: _onContinue)
            ],
          ),
        ),
      ),
    );
  }

  // ── Helpers ─────────────────────────────────────────────────────────────────
  String get _screenTitle => switch (widget.args.flow) {
        OtpFlow.forgotPassword => 'Check your email',
        OtpFlow.register => 'Verify your email',
        OtpFlow.phoneVerification => 'Verify your phone',
      };
}

// ── OTP Box Widget (dumb) ─────────────────────────────────────────────────────
class _OtpBox extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;

  const _OtpBox({
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: 60,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: Theme.of(context).textTheme.headlineSmall,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: colors.surfaceContainerHighest,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
            borderSide: BorderSide(color: colors.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
            borderSide: BorderSide(color: colors.primary, width: 2),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
