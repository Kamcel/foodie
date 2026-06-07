import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_button.dart';
import 'package:foodie/core/widgets/app_snackbar.dart';
import 'package:foodie/core/widgets/custom_app_bar.dart';
import 'package:foodie/features/auth/data/models/auth_state.dart';
import 'package:foodie/features/auth/data/models/otp_args.dart';
import 'package:foodie/features/auth/presentation/providers/auth_notifier.dart';
import 'package:go_router/go_router.dart';

class SignUpEmailScreen extends ConsumerStatefulWidget {
  const SignUpEmailScreen({super.key});

  @override
  ConsumerState<SignUpEmailScreen> createState() => _SignUpEmailScreenState();
}

class _SignUpEmailScreenState extends ConsumerState<SignUpEmailScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isChecked = false;

  // ── Validation booleans ───────────────────────────────────────────────────
  bool _isEmailValid = false;
  bool _isPasswordValid = false;

  // Confirm password has its OWN boolean — it goes green when it MATCHES
  // the password field, not when it passes strength rules.
  // These are two completely different conditions.
  bool _isConfirmPasswordValid = false;

  // ── Password rule trackers ────────────────────────────────────────────────
  bool _hasMinLength = false;
  bool _hasUpperCase = false;
  bool _hasLowerCase = false;
  bool _hasNumber = false;
  bool _hasSpecialChar = false;
  bool _showPasswordRules = false;

  // ── Visibility toggles ────────────────────────────────────────────────────
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    _confirmPasswordController.dispose();
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

  // ── Password ──────────────────────────────────────────────────────────────

  void _onPasswordChanged(String value) {
    setState(() {
      _hasMinLength = value.length >= 8;
      _hasUpperCase = RegExp(r'[A-Z]').hasMatch(value);
      _hasLowerCase = RegExp(r'[a-z]').hasMatch(value);
      _hasNumber = RegExp(r'[0-9]').hasMatch(value);
      _hasSpecialChar = RegExp(r'[!@#$%^&*()?]').hasMatch(value);
      _isPasswordValid = _hasMinLength &&
          _hasUpperCase &&
          _hasLowerCase &&
          _hasNumber &&
          _hasSpecialChar;
      _showPasswordRules = value.isNotEmpty;

      // Re-evaluate confirm password validity whenever password changes.
      // If the user edits the password field AFTER filling confirm,
      // the confirm border should immediately reflect the new match status.
      _isConfirmPasswordValid = _confirmPasswordController.text.isNotEmpty &&
          _confirmPasswordController.text == value;
    });
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Password is required';
    if (value.length < 8) return 'Must be at least 8 characters';
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Must contain an uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Must contain a lowercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) return 'Must contain a number';
    if (!RegExp(r'[!@#$%^&*()?]').hasMatch(value)) {
      return 'Must contain a special character';
    }
    return null;
  }

  // ── Confirm password ──────────────────────────────────────────────────────

  void _onConfirmPasswordChanged(String value) {
    setState(() {
      _isConfirmPasswordValid =
          value.isNotEmpty && value == _passwordController.text;
    });
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) return 'Please confirm your password';
    if (value != _passwordController.text) return 'Passwords do not match';
    return null;
  }

  // ── Border colour helpers ─────────────────────────────────────────────────

  Color _emailBorderColor(ColorScheme colors, {bool focused = false}) {
    if (_emailController.text.isEmpty) {
      return focused ? colors.primary : colors.outlineVariant;
    }
    return _isEmailValid ? Colors.green : colors.error;
  }

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

  // ── Build ─────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final authState = ref.watch(authProvider);

    ref.listen(authProvider, (previous, next) {
      next.whenOrNull(
        error: (message) => AppSnackbar.show(context,
            message: message, type: SnackbarType.error),
        authenticated: (_) => context.go(Routes.home),
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
              // ── Scrollable form area ─────────────────────────────────────
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create a new account',
                        style: textTheme.displayLarge,
                      ),
                      const SizedBox(height: AppDimensions.spaceLG),

                      // Bug fix 1 — Form now has key: _formKey.
                      // Without this the GlobalKey is declared but never
                      // connected to anything, so validate() throws a null
                      // error when the button is tapped.
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // ── Email ──────────────────────────────────────
                            TextFormField(
                              controller: _emailController,
                              validator: _validateEmail,
                              onChanged: _onEmailChanged,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                fillColor: colors.surface,
                                hintText: 'Email address',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide: BorderSide(
                                    color: _emailBorderColor(colors),
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide: BorderSide(
                                    color: _emailBorderColor(colors,
                                        focused: true),
                                    width: 2,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide:
                                      BorderSide(color: colors.error, width: 2),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide:
                                      BorderSide(color: colors.error, width: 2),
                                ),
                              ),
                            ),
                            const SizedBox(height: AppDimensions.spaceMD),

                            // ── Password ───────────────────────────────────
                            TextFormField(
                              controller: _passwordController,
                              validator: _validatePassword,
                              onChanged: _onPasswordChanged,
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                fillColor: colors.surface,
                                hintText: 'Password',
                                suffix: GestureDetector(
                                  onTap: () => setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  }),
                                  child: Icon(
                                    _isPasswordVisible
                                        ? FontAwesomeIcons.eyeSlash
                                        : FontAwesomeIcons.eye,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide: BorderSide(
                                    color: _passwordBorderColor(colors),
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide: BorderSide(
                                    color: _passwordBorderColor(colors,
                                        focused: true),
                                    width: 2,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide:
                                      BorderSide(color: colors.error, width: 2),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide:
                                      BorderSide(color: colors.error, width: 2),
                                ),
                              ),
                            ),

                            // ── Password rules checklist ───────────────────
                            if (_showPasswordRules) ...[
                              const SizedBox(height: AppDimensions.spaceSM),
                              _buildPasswordRule(
                                  'At least 8 characters', _hasMinLength),
                              _buildPasswordRule(
                                  'At least one uppercase letter',
                                  _hasUpperCase),
                              _buildPasswordRule(
                                  'At least one lowercase letter',
                                  _hasLowerCase),
                              _buildPasswordRule(
                                  'At least one number', _hasNumber),
                              _buildPasswordRule(
                                  'At least one special character (!@#\$%^&*?)',
                                  _hasSpecialChar),
                            ],

                            const SizedBox(height: AppDimensions.spaceMD),

                            // ── Confirm password ───────────────────────────
                            TextFormField(
                              controller: _confirmPasswordController,
                              validator: _validateConfirmPassword,
                              onChanged: _onConfirmPasswordChanged,
                              obscureText: !_isConfirmPasswordVisible,
                              decoration: InputDecoration(
                                fillColor: colors.surface,
                                hintText: 'Confirm password',
                                suffix: GestureDetector(
                                  onTap: () => setState(() {
                                    _isConfirmPasswordVisible =
                                        !_isConfirmPasswordVisible;
                                  }),
                                  child: Icon(
                                    _isConfirmPasswordVisible
                                        ? FontAwesomeIcons.eyeSlash
                                        : FontAwesomeIcons.eye,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide: BorderSide(
                                    color: _confirmPasswordBorderColor(colors),
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide: BorderSide(
                                    color: _confirmPasswordBorderColor(colors,
                                        focused: true),
                                    width: 2,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide:
                                      BorderSide(color: colors.error, width: 2),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusSM),
                                  borderSide:
                                      BorderSide(color: colors.error, width: 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ── Terms checkbox ───────────────────────────────────
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('I agree to terms & conditions'),
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // ── Bottom buttons ───────────────────────────────────────────
              Column(
                children: [
                  AppButton(
                    label: 'Create account',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ref.read(authProvider.notifier).register(
                            email: _emailController.text,
                            password: _passwordController.text);
                      }
                    },
                    isLoading: authState.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    ),
                    // Button enables only when all three fields are valid
                    // AND the user has agreed to terms and conditions.
                    isEnabled: _isEmailValid &&
                        _isPasswordValid &&
                        _isConfirmPasswordValid &&
                        _isChecked,
                  ),
                  const SizedBox(height: AppDimensions.spaceMD),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: textTheme.bodyMedium,
                      ),
                      TextButton(
                        onPressed: () => context.push(Routes.login),
                        child: Text(
                          'Login',
                          style: textTheme.bodyLarge?.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: colors.primary,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Password rule row widget ──────────────────────────────────────────────

  Widget _buildPasswordRule(String label, bool isSatisfied) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(
            isSatisfied ? Icons.check_circle : Icons.circle_outlined,
            color: isSatisfied ? Colors.green : Colors.grey,
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: isSatisfied ? Colors.green : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
