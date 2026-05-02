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

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isEmailValid = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // ── Email ─────────────────────────────────────────────────────────────────

  void _onEmailChanged(String value) {
    setState(() {
      _isEmailValid = value.isNotEmpty &&
          RegExp(r'^[\w.-]+@[\w.-]+\.[\w.]+$').hasMatch(value);
    });
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email is required';
    if (!RegExp(r'^[\w.-]+@[\w.-]+\.[\w.]+$').hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  // ── Border colour helpers ─────────────────────────────────────────────────

  Color _emailBorderColor(ColorScheme colors, {bool focused = false}) {
    if (_emailController.text.isEmpty) {
      return focused ? colors.primary : colors.outlineVariant;
    }
    return _isEmailValid ? Colors.green : colors.error;
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final authState = ref.watch(authProvider);

    ref.listen(authProvider, (previous, next) {
      next.whenOrNull(
          error: (message) => AppSnackbar.show(context,
              message: message, type: SnackbarType.error),
          otpSent: () => context.pushNamed('otp-verify',
              extra: OtpArgs(
                flow: OtpFlow.forgotPassword,
                destination: _emailController.text,
                destinationLabel: 'your email',
              )));
    });

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: CustomAppBar(
        title: 'Foodie',
        showBack: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.spaceMD),
          child: Column(
            children: [
              // Scrollable form area
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Forgot Password',
                        style: textTheme.displayLarge,
                      ),
                      const SizedBox(height: AppDimensions.spaceLG),
                      Form(
                        key: _formKey,
                        child: TextFormField(
                          validator: _validateEmail,
                          controller: _emailController,
                          onChanged: _onEmailChanged,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            fillColor: colors.surface,
                            hintText: 'email address',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide: BorderSide(
                                color: _emailBorderColor(colors),
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide: BorderSide(
                                color: _emailBorderColor(colors, focused: true),
                                width: 2,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide:
                                  BorderSide(color: colors.error, width: 2),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide:
                                  BorderSide(color: colors.error, width: 2),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // Bottom buttons
              Column(
                children: [
                  AppButton(
                      label: 'Continue',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ref
                              .read(authProvider.notifier)
                              .forgotPassword(email: _emailController.text);
                        }
                      },
                      isLoading: authState.maybeWhen(
                          loading: () => true, orElse: () => false),
                      isEnabled: _isEmailValid),
                  const SizedBox(height: AppDimensions.spaceMD),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
