import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/utils/size_utils.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: color.surface,
      appBar: AppBar(
        backgroundColor: color.surface,
        elevation: 0,
        title: Text("Foodie", style: textTheme.headlineMedium),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.push(Routes.welcome),
          icon: const Icon(FontAwesomeIcons.arrowLeft),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset(
                  'assets/animations/cooking.json',
                  height: SizeUtils.hp(35),
                  width: SizeUtils.wp(80),
                ),
                //SizedBox(height: AppDimensions.spaceSM),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.spaceMD,
                  ),
                  child: Text(
                    "Create an account to get started with Foodie today!",
                    style: textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: AppDimensions.spaceXXL),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.spaceMD,
                  ),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color.primary,
                      foregroundColor: color.onPrimary,
                      minimumSize: const Size(double.infinity, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          100,
                        ),
                      ),
                    ),
                    onPressed: () {
                      context.push(Routes.upcoming);
                    },
                    icon: const Icon(FontAwesomeIcons.apple),
                    label: const Text(
                      "Continue with Apple",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppDimensions.spaceLG),
                Text(
                  'or',
                  style: textTheme.titleMedium?.copyWith(
                    color: color.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: AppDimensions.spaceMD),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.spaceMD,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color.primary.withValues(alpha: 0.4),
                            foregroundColor: color.onSurfaceVariant,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          onPressed: () {
                            context.push(Routes.upcoming);
                          },
                          child: const Icon(FontAwesomeIcons.google),
                        ),
                      ),
                      SizedBox(width: AppDimensions.spaceSM),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color.primary.withValues(alpha: 0.4),
                            foregroundColor: color.onSurfaceVariant,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          onPressed: () {
                            context.push(Routes.upcoming);
                          },
                          child: const Icon(FontAwesomeIcons.facebook),
                        ),
                      ),
                      SizedBox(width: AppDimensions.spaceSM),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color.primary.withValues(alpha: 0.4),
                            foregroundColor: color.onSurfaceVariant,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          onPressed: () {
                            context.push(Routes.login);
                          },
                          child: const Icon(FontAwesomeIcons.message),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppDimensions.spaceXL), // Bottom padding
              ],
            ),
          ),
        ),
      ),
    );
  }
}
