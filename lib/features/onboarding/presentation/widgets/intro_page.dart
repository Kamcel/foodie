import 'package:flutter/material.dart';

import 'package:foodie/core/utils/size_utils.dart';
import 'package:foodie/features/onboarding/data/models/onboarding_page.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  final OnboardingPage onboarding;
  const IntroPage({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: colors.surface,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              onboarding.animationPath,
              height: SizeUtils.hp(35),
              width: SizeUtils.wp(75),
            ),
            const SizedBox(height: 32),
            Text(
              onboarding.title,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              onboarding.subTitle,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
