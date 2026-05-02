# Architecture Rules — WITNESS 8-Pillar System

## Core Principle
This is the Foodie food delivery app built by Marcel.
Every feature follows the WITNESS 8-pillar architecture strictly.
Never deviate. Never suggest alternatives. Ask before creating any file.

## Build Order (NON-NEGOTIABLE)
For every new feature, always follow this exact order:
1. UI screens and widgets first
2. Freezed models (data layer)
3. Hive storage
4. Dio service (API layer)
5. Riverpod state (providers + notifiers)

Never skip ahead. Never write Riverpod before UI exists.
Never write Dio before models exist.

## Folder Structure Per Feature
lib/features/<feature_name>/
├── data/
│   ├── models/         ← Freezed data classes + request/response models
│   ├── services/       ← Dio API service classes
│   ├── storage/        ← Hive storage classes
│   └── enums.dart      ← Feature-specific enums (if needed)
├── presentation/
│   ├── providers/      ← Riverpod notifiers (@riverpod annotation)
│   ├── screens/        ← Logic controllers (ConsumerStatefulWidget)
│   └── widgets/        ← Pure reusable UI (StatelessWidget or ConsumerWidget)

## Shared Folders
lib/core/
├── models/             ← Models used across 2+ features (User, LocationModel, Restaurant, Dish)
├── network/            ← Dio client, interceptors, AppException
├── providers/          ← App-wide providers
├── router/             ← GoRouter configuration and routes
├── theme/              ← AppColors, AppTheme, AppTypography, AppDimensions
└── utils/              ← Shared utilities

lib/shared/
├── models/             ← Shared non-feature models
├── widgets/            ← Truly reusable widgets (AppButton, FoodieTextField, etc.)
└── enums/              ← App-wide enums (Cuisine, DietaryPreference, Allergy, SpiceLevel)

## Critical Architecture Rules
- Screens = logic controllers. Widgets = pure reusable UI. Never mix these.
- VoidCallback for single tappable widget. Function(T) for group/wrapper or when parent needs a returned value.
- No state for what can be calculated — use getters.
- State class (data class) → always use state.copyWith() for updates.
- Union state → replace entire state with new factory.
- keepAlive: true on any provider that must survive navigation (AuthNotifier, ProfileNotifier, ThemeController).
- Repository layer only when coordinating multiple data sources. Otherwise service → notifier directly.

## Request vs Response Models
- POST/PATCH requests → create a separate Freezed request model (e.g., CreateProfileRequest)
- GET responses → use the main model (e.g., Profile)
- DELETE → neither request nor response model needed
- Every API request model must have toJson(). Every response model must have fromJson().

## Hive Rules
- Single "app_settings" box for theme and onboarding: keys "theme_pref" and "onboarding_done"
- Feature-specific boxes: named clearly (e.g., "profile_data", "auth_data")
- Never store auth tokens in Hive — use AuthStorage singleton with Hive
- Always open boxes in main.dart before runApp()
- Storage classes follow singleton pattern: static instance getter

## Completed Features (DO NOT MODIFY EXISTING ARCHITECTURE)
- Theme system (AppColors, AppTheme, AppTypography, AppDimensions, AppResponsive)
- Splash screen
- Auth feature (Login, SignUp, ForgotPassword, OTP, ResetPassword)
- Onboarding feature
- Profile setup (6 steps, GPS, image picker, all wired to ProfileNotifier)
- Restaurant feature (models, enums, UI widgets — service and notifier pending)