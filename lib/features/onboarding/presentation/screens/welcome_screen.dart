//welcome
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/custom_app_bar.dart';
import 'package:foodie/features/onboarding/data/constants/onboarding_constants.dart';
import 'package:foodie/features/onboarding/presentation/providers/onboarding_provider.dart';
import 'package:foodie/features/onboarding/presentation/widgets/intro_page.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({super.key});

  @override
  ConsumerState<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends ConsumerState<WelcomeScreen> {
  final PageController _pageController = PageController();
  //bool onLastPage = false;
  Timer? _autoPageTimer;

  @override
  void initState() {
    super.initState();
    _autoPageTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_pageController.hasClients) {
        final currentState = ref.read(onboardingProviderProvider);
        // ignore: unused_local_variable
        final isLastPage =
            currentState.currentPage == currentState.pages.length - 1;
        if (isLastPage) {
          _pageController.jumpToPage(0);
        } else {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _autoPageTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final onboardingState = ref.watch(onboardingProviderProvider);
    final notifier = ref.read(onboardingProviderProvider.notifier);
    // ignore: unused_local_variable
    final isLastPage =
        onboardingState.currentPage == onboardingState.pages.length - 1;
    return Scaffold(
      backgroundColor: colors.surface,
      appBar: CustomAppBar(
        title: 'Foodie',
        showBack: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: AppDimensions.spaceMD,
          left: AppDimensions.spaceMD,
          bottom: AppDimensions.spaceXXL,
        ),
        child: Stack(
          children: [
            PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  // keep track of whether user is on the final page
                  notifier.onPageChanged(index);
                },
                children: onboardingData
                    .map<Widget>((data) => IntroPage(onboarding: data))
                    .toList()),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Dot indicator
                Container(
                  alignment: Alignment(0, 0.70),
                  child: SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                      activeDotColor: colors.primary,
                      dotColor: colors.primary.withValues(alpha: 0.2),
                      dotHeight: AppDimensions.spaceSM,
                      dotWidth: AppDimensions.spaceSM,
                      spacing: AppDimensions.spaceSM,
                    ),
                    controller: _pageController,
                    count: 3,
                  ),
                ),
                SizedBox(height: AppDimensions.spaceMD),

                //Rows of Buttons
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 64,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                colors.primary.withValues(alpha: 0.2),
                            foregroundColor: colors.primary,
                          ),
                          onPressed: () {
                            notifier.skip(context);
                          },
                          child: Text(
                            'Skip',
                            style: textTheme.bodyLarge?.copyWith(
                              color: colors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: AppDimensions.spaceSM),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 64,
                        child: ElevatedButton(
                          onPressed: () {
                            if (isLastPage) {
                              notifier.complete(context);
                              // completed onboarding - navigate or update state
                              // e.g. Navigator.of(context).pushReplacementNamed('/home');
                              debugPrint('Finished onboarding');
                            } else {
                              //notifier.next();
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colors.primary,
                            foregroundColor: Colors.white,
                          ),
                          child: Text(
                            isLastPage ? 'Get Started' : 'Next',
                            style: textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
    );
  }
}
