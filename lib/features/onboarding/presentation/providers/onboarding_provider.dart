import 'package:flutter/material.dart';
import 'package:foodie/features/onboarding/data/constants/onboarding_constants.dart';
import 'package:foodie/features/onboarding/data/models/onboarding_state.dart';
import 'package:foodie/features/onboarding/data/models/onboarding_status.dart';
import 'package:foodie/features/onboarding/data/storage/onboarding_hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:go_router/go_router.dart';

part 'onboarding_provider.g.dart';

// ── Onboarding Notifier ───────────────────────────────────
@Riverpod(keepAlive: true)
class OnboardingProvider extends _$OnboardingProvider {
  // ignore: unused_field
  static const _totalPages = 3;

  @override
  OnboardingState build() {
    // L -- Lifecycle: check if already done on first build
    final isDone = OnboardingStorage.instance.isDone;
    return OnboardingState(
        isDone: isDone,
        currentPage: 0,
        status:
            isDone ? OnboardingStatus.completed : OnboardingStatus.notStarted,
        pages: onboardingData);
  }

  // Called by PageController onPageChanged
  void onPageChanged(int page) {
    state = state.copyWith(currentPage: page);
  }

  void next() {
    if (state.currentPage < state.pages.length - 1) {
      state = state.copyWith(currentPage: state.currentPage + 1);
    }
  }

  // Called when user taps 'Get Started' or 'Skip'
  Future<void> complete(BuildContext context) async {
    await OnboardingStorage.instance.markDone();
    state = state.copyWith(isDone: true);
    if (context.mounted) {
      context.go('/register'); // or /home if no auth
    }
  }

  Future<void> skip(BuildContext context) => complete(context);
}
