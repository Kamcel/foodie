# Tech Stack — Foodie App

## Flutter & Dart
- Flutter stable, Dart 3.0+, null safety enforced everywhere
- Named parameters for all constructors with more than 2 fields
- Always handle loading, error, empty, and data states in UI (LSEE pattern)

## State Management — Riverpod
- Use @riverpod annotation (riverpod_annotation) — NOT manual Provider
- @riverpod for simple providers
- class XNotifier extends _$XNotifier for stateful notifiers
- AsyncNotifierProvider for anything that loads remote data
- NotifierProvider for pure local state
- ref.watch() to subscribe and rebuild. ref.read() to fire a one-time action.
- Never use ref.read() inside build() — always ref.watch() for reactive data
- keepAlive: true on: AuthNotifier, ProfileNotifier, ThemeController

## Models — Freezed
- ALL data models are Freezed classes with @freezed annotation
- Private constructor const ClassName._() required for computed properties
- Always run: flutter pub run build_runner build --delete-conflicting-outputs
- State classes (ProfileState, LocationState) use data class pattern + copyWith
- State unions (AuthState, HomeState) use factory constructors pattern
- Models that come from API always have fromJson/toJson
- Models that are UI-only state (ProfileState) do NOT need fromJson/toJson — remove part file

## Networking — Dio
- Central ApiService singleton in lib/core/network/api_service.dart
- All errors wrapped in AppException with userMessage field
- catch (e) not on AppException catch (e) until real backend connected
- Service classes: one class per feature, injected as local variable (not provided)
- Three types of service methods: GET (returns model), POST (takes request model, returns response model), PATCH/DELETE

## Local Storage — Hive CE
- Package: hive_ce (community edition) not original hive
- HiveRegistrar pattern for registering all adapters
- Box names are constants
- Storage classes are singletons with static instance getter
- hasTokens, hasProfile etc. as computed bool getters — not stored state

## Navigation — GoRouter
- All routes defined in app_router.dart
- Routes class with static const String names (no leading slashes in route names)
- context.goNamed() for replacing stack. context.pushNamed() for pushing.
- Redirect guard: checks AuthStorage.instance.hasTokens
- ShellRoute for bottom navigation (coming later)

## Font System
- Body/UI text: Poppins (via pubspec.yaml assets)
- Display/Headline: Fraunces (via google_fonts package)
- 13 text styles in AppTypography
- Always declare colors and textTheme at top of build() method
- theme usage: Theme.of(context).colorScheme and Theme.of(context).textTheme

## Theme System
- Material Design 3, orange palette
- Light primary: #954F00. Dark primary: #FFB96B
- Three-way cycle: system → light → dark (ThemeController)
- Category colors (Indian, Nigerian, Italian, Chinese) live in AppColors directly
- copyWith only for single style overrides

## Other Packages
- image_picker: avatar selection (gallery + camera + remove via bottom sheet)
- geolocator + geocoding: GPS location for address auto-fill
- google_fonts: Fraunces for display/headline
- smooth_page_indicator: onboarding dots
- font_awesome_flutter + lucide_icons_flutter: icons
- lottie: animations (splash screen)
- international_phone_number_input: Step 2 phone field