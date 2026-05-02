import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_button.dart';
import 'package:foodie/core/widgets/app_snackbar.dart';
import 'package:foodie/core/widgets/custom_app_bar.dart';
import 'package:foodie/features/auth/data/models/auth_state.dart';
import 'package:foodie/features/auth/presentation/providers/auth_notifier.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  ConsumerState<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  // ── Controllers ────────────────────────────────────────────────────────────
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // ── Validation booleans ────────────────────────────────────────────────────
  bool _isPasswordValid = false;
  bool _isConfirmPasswordValid = false;

  // ── Eye toggles ────────────────────────────────────────────────────────────
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  // ── Password rules ─────────────────────────────────────────────────────────
  bool _hasMinLength = false;
  bool _hasUpperCase = false;
  bool _hasLowerCase = false;
  bool _hasNumber = false;
  bool _hasSpecialChar = false;

  bool get _isEnabled => _isPasswordValid && _isConfirmPasswordValid;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  // ── onChanged ──────────────────────────────────────────────────────────────
  void _onPasswordChanged(String value) {
    setState(() {
      _hasMinLength = value.length >= 8;
      _hasUpperCase = value.contains(RegExp(r'[A-Z]'));
      _hasLowerCase = value.contains(RegExp(r'[a-z]'));
      _hasNumber = value.contains(RegExp(r'[0-9]'));
      _hasSpecialChar = value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));
      _isPasswordValid = _hasMinLength &&
          _hasUpperCase &&
          _hasLowerCase &&
          _hasNumber &&
          _hasSpecialChar;
      // re-check confirm whenever password changes
      _isConfirmPasswordValid = _confirmPasswordController.text == value &&
          _confirmPasswordController.text.isNotEmpty;
    });
  }

  void _onConfirmPasswordChanged(String value) {
    setState(() {
      _isConfirmPasswordValid =
          value == _passwordController.text && value.isNotEmpty;
    });
  }

  // ── Validators ─────────────────────────────────────────────────────────────
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Password is required';
    if (!_hasMinLength) return 'At least 8 characters required';
    if (!_hasUpperCase) return 'Add at least one uppercase letter';
    if (!_hasLowerCase) return 'Add at least one lowercase letter';
    if (!_hasNumber) return 'Add at least one number';
    if (!_hasSpecialChar) return 'Add at least one special character';
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) return 'Please confirm your password';
    if (value != _passwordController.text) return 'Passwords do not match';
    return null;
  }

  // ── Border helpers ─────────────────────────────────────────────────────────
  Color _passwordBorderColor(ColorScheme colors, {bool focused = false}) {
    if (_passwordController.text.isEmpty) {
      return focused ? colors.primary : colors.outlineVariant;
    }
    return _isPasswordValid ? Colors.green : colors.error;
  }

  Color _confirmPasswordBorderColor(ColorScheme colors,
      {bool focused = false}) {
    if (_confirmPasswordController.text.isEmpty) {
      return focused ? colors.primary : colors.outlineVariant;
    }
    return _isConfirmPasswordValid ? Colors.green : colors.error;
  }

  // ── Password rule row ──────────────────────────────────────────────────────
  Widget _buildPasswordRule(String label, bool passed) {
    final color = passed ? Colors.green : Colors.grey;
    return Row(
      children: [
        Icon(
          passed ? Icons.check_circle_rounded : Icons.radio_button_unchecked,
          size: 14,
          color: color,
        ),
        const SizedBox(width: 6),
        Text(label, style: TextStyle(fontSize: 12, color: color)),
      ],
    );
  }

  // ── Submit ─────────────────────────────────────────────────────────────────
  void _onContinue() {
    if (_formKey.currentState!.validate()) {
      ref
          .read(authProvider.notifier)
          .resetPassword(newPassword: _passwordController.text);
    }
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
        authenticated: (_) => context.pushNamed('login'),
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppDimensions.spaceXXL),
                        Text(
                          'Create a new password',
                          style: textTheme.displayLarge,
                        ),
                        const SizedBox(height: AppDimensions.spaceLG),

                        // ── Password field ─────────────────────────────────
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _obscurePassword,
                          validator: _validatePassword,
                          onChanged: _onPasswordChanged,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: colors.surface,
                            hintText: 'New password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? FontAwesomeIcons.eyeSlash
                                    : FontAwesomeIcons.eye,
                                size: 18,
                                color: colors.outline,
                              ),
                              onPressed: () => setState(
                                  () => _obscurePassword = !_obscurePassword),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide: BorderSide(
                                  color: _passwordBorderColor(colors),
                                  width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide: BorderSide(
                                  color: _passwordBorderColor(colors,
                                      focused: true),
                                  width: 2),
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
                        const SizedBox(height: AppDimensions.spaceSM),

                        // ── Password rules ─────────────────────────────────
                        _buildPasswordRule(
                            'At least 8 characters', _hasMinLength),
                        _buildPasswordRule(
                            'At least one uppercase letter', _hasUpperCase),
                        _buildPasswordRule(
                            'At least one lowercase letter', _hasLowerCase),
                        _buildPasswordRule('At least one number', _hasNumber),
                        _buildPasswordRule(
                            'At least one special character', _hasSpecialChar),
                        const SizedBox(height: AppDimensions.spaceMD),

                        // ── Confirm password field ─────────────────────────
                        TextFormField(
                          controller: _confirmPasswordController,
                          obscureText: _obscureConfirmPassword,
                          validator: _validateConfirmPassword,
                          onChanged: _onConfirmPasswordChanged,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: colors.surface,
                            hintText: 'Re-enter the new password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureConfirmPassword
                                    ? FontAwesomeIcons.eyeSlash
                                    : FontAwesomeIcons.eye,
                                size: 18,
                                color: colors.outline,
                              ),
                              onPressed: () => setState(() =>
                                  _obscureConfirmPassword =
                                      !_obscureConfirmPassword),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide: BorderSide(
                                  color: _confirmPasswordBorderColor(colors),
                                  width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide: BorderSide(
                                  color: _confirmPasswordBorderColor(colors,
                                      focused: true),
                                  width: 2),
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
                      ],
                    ),
                  ),
                ),
              ),

              // ── Button ─────────────────────────────────────────────────────
              AppButton(
                  label: 'Continue',
                  isEnabled: _isEnabled,
                  isLoading: authState.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  onPressed: _onContinue),
            ],
          ),
        ),
      ),
    );
  }
}
