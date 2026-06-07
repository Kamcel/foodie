import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_button.dart';
import 'package:foodie/core/widgets/app_snackbar.dart';
import 'package:foodie/core/widgets/custom_app_bar.dart';
import 'package:foodie/features/auth/data/models/auth_state.dart';
import 'package:foodie/features/auth/presentation/providers/auth_notifier.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // These booleans drive the dynamic border colours.
  // They are updated on every keystroke via onChanged,
  // which triggers setState() and causes Flutter to rebuild
  // the decoration with the new colour.
  bool _isEmailValid = false;
  bool _isPasswordValid = false;

  // Password rule trackers — each one lights up independently
  // as the user types.
  bool _hasMinLength = false;
  bool _hasUpperCase = false;
  bool _hasLowerCase = false;
  bool _hasNumber = false;
  bool _hasSpecialChar = false;

  // Controls whether the password rules checklist is visible.
  // Appears the moment the user starts typing.
  bool _showPasswordRules = false;

  // Controls password visibility toggle
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // ── Validation logic ────────────────────────────────────────────────────────

  // Called on every keystroke via TextFormField.onChanged.
  // Updates _isEmailValid so the border colour re-evaluates on rebuild.
  void _onEmailChanged(String value) {
    setState(() {
      _isEmailValid = value.isNotEmpty &&
          RegExp(r'^[\w.-]+@[\w.-]+\.[\w.]+$').hasMatch(value);
    });
  }

  // Called on every keystroke via TextFormField.onChanged.
  // Updates each rule tracker independently so the checklist
  // lights up rule by rule as the user satisfies each condition.
  void _onPasswordChanged(String value) {
    setState(() {
      _hasMinLength = value.length >= 8;
      _hasUpperCase = RegExp(r'[A-Z]').hasMatch(value);
      _hasLowerCase = RegExp(r'[a-z]').hasMatch(value);
      _hasNumber = RegExp(r'[0-9]').hasMatch(value);
      _hasSpecialChar = RegExp(r'[!@#$%^&*()?]').hasMatch(value);

      // All five rules satisfied = password is valid
      _isPasswordValid = _hasMinLength &&
          _hasUpperCase &&
          _hasLowerCase &&
          _hasNumber &&
          _hasSpecialChar;

      // Show the rules checklist the moment typing starts,
      // hide it again if the field is cleared completely.
      _showPasswordRules = value.isNotEmpty;
    });
  }

  // Called by the Form when _formKey.currentState!.validate() runs.
  // Returns null = field is valid. Returns a String = error message.
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email is required';
    if (!RegExp(r'^[\w.-]+@[\w.-]+\.[\w.]+$').hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  // The password validator mirrors the rule tracker booleans.
  // It only runs on form submission — the checklist handles
  // real-time feedback while typing.
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Password is required';
    if (value.length < 8) return 'Password must be at least 8 characters';
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Must contain at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Must contain at least one lowercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Must contain at least one number';
    }
    if (!RegExp(r'[!@#$%^&*()?]').hasMatch(value)) {
      return 'Must contain at least one special character';
    }
    return null;
  }

  // ── Border colour helper ─────────────────────────────────────────────────────

  // Returns the correct border colour based on field state.
  // empty = neutral, valid = green, invalid = error red.
  // This is called for BOTH enabledBorder and focusedBorder
  // so the colour is consistent whether or not the field is focused.
  // This was the core bug — the focusedBorder had a hardcoded primary
  // colour, so the dynamic colour was invisible while the user typed.
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

  // ── Build ────────────────────────────────────────────────────────────────────

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
              // ── Scrollable form area ───────────────────────────────────────
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    // onChanged on Form is removed — each field
                    // manages its own state via its own onChanged.
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Log in to your account',
                          style: textTheme.displayLarge,
                        ),
                        const SizedBox(height: AppDimensions.spaceLG),

                        // ── Email field ──────────────────────────────────────
                        TextFormField(
                          controller: _emailController,
                          validator: _validateEmail,
                          keyboardType: TextInputType.emailAddress,
                          // onChanged fires on every keystroke.
                          // It updates _isEmailValid and triggers a rebuild
                          // so the border colour updates in real time.
                          onChanged: _onEmailChanged,
                          decoration: InputDecoration(
                            fillColor: colors.surface,
                            hintText: 'Email address',
                            // enabledBorder — shown when field is NOT focused.
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide: BorderSide(
                                color: _emailBorderColor(colors),
                                width: 2,
                              ),
                            ),
                            // focusedBorder — shown WHILE user is typing.
                            // Must use the same conditional logic as enabledBorder.
                            // Without this, the border snaps to primary the
                            // moment the user taps in, hiding the validity feedback.
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
                        const SizedBox(height: AppDimensions.spaceMD),

                        // ── Password field ───────────────────────────────────
                        TextFormField(
                          controller: _passwordController,
                          validator: _validatePassword,
                          // obscureText is driven by the toggle button
                          obscureText: !_isPasswordVisible,
                          onChanged: _onPasswordChanged,
                          decoration: InputDecoration(
                            fillColor: colors.surface,
                            hintText: 'Password',
                            // Eye icon toggles password visibility
                            suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                              child: Icon(
                                _isPasswordVisible
                                    ? FontAwesomeIcons.eyeSlash
                                    : FontAwesomeIcons.eye,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide: BorderSide(
                                color: _passwordBorderColor(colors),
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppDimensions.radiusSM),
                              borderSide: BorderSide(
                                color:
                                    _passwordBorderColor(colors, focused: true),
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

                        // ── Password rules checklist ─────────────────────────
                        // Appears only when the user starts typing.
                        // Each rule lights up green independently as it is satisfied,
                        // giving the user clear real-time guidance.
                        if (_showPasswordRules) ...[
                          const SizedBox(height: AppDimensions.spaceSM),
                          _buildPasswordRule(
                              'At least 8 characters', _hasMinLength),
                          _buildPasswordRule(
                              'At least one uppercase letter', _hasUpperCase),
                          _buildPasswordRule(
                              'At least one lowercase letter', _hasLowerCase),
                          _buildPasswordRule('At least one number', _hasNumber),
                          _buildPasswordRule(
                              'At least one special character (!@#\$%^&*?)',
                              _hasSpecialChar),
                        ],

                        // ── Forgot password ──────────────────────────────────
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () =>
                                context.push(Routes.forgotPassword),
                            child: Text(
                              'Forgot password?',
                              style: textTheme.titleMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ── Bottom buttons ─────────────────────────────────────────────
              Column(
                children: [
                  AppButton(
                    label: 'Login',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ref.read(authProvider.notifier).login(
                            email: _emailController.text,
                            password: _passwordController.text);
                      }
                    },
                    isLoading: authState.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    ),
                    isEnabled: _isEmailValid && _isPasswordValid,
                  ),
                  const SizedBox(height: AppDimensions.spaceMD),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: textTheme.bodyMedium,
                      ),
                      TextButton(
                        onPressed: () => context.push(Routes.signup),
                        child: Text(
                          'Sign up',
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

  // ── Password rule row widget ─────────────────────────────────────────────────

  // Builds a single rule row with a check/circle icon and label.
  // isSatisfied drives both the icon choice and the text colour,
  // so the entire row lights up green when the rule is met.
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
