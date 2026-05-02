# System Patterns — WITNESS Architecture

## Build Order
UI → Freezed Models → Hive Storage → Dio Service → Riverpod State

## Key Architectural Decisions Made
- Screens = ConsumerStatefulWidget (logic controllers)
- Widgets = StatelessWidget or ConsumerWidget (pure UI)
- ProfileState is a data class (not union) → uses copyWith
- AuthState is a union → replaces entire state
- LocationState is a data class → uses copyWith
- isHomeAddress lives in ProfileNotifier (everyone needs it)
- hasWork is computed inline (profileState.workAddress.isNotEmpty) — NOT stored state
- Restaurant and Profile DietaryPreference enums are kept SEPARATE intentionally
- DayOfWeek is int (0-6) not enum
- Category colors live in AppColors directly, not M3 ColorScheme

## Completed Features
- Theme system ✅
- Splash screen ✅
- Auth (Login, SignUp, ForgotPassword, OTP, ResetPassword) ✅
- Onboarding ✅
- Profile setup (6 steps, GPS, image picker, all wired) ✅
- Restaurant models + enums + UI widgets ✅

## In Progress
- Restaurant service + Riverpod notifier
- Home screen (LSEE states — first union state outside auth)
- Dish feature
- Category + Banner features

## Pending
- Cart feature
- Orders feature
- Tracking feature
- GoRouter ShellRoute for bottom nav