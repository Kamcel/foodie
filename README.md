# Foodie 🍔

A production-grade food delivery app built with Flutter and clean architecture.

> Built entirely by a self-taught developer — from UI/UX design to architecture to implementation.

---

## 📱 Screenshots

### Onboarding & Authentication
| Light Mode Onboarding | Dark Mode Onboarding | Sign Up / Authenticate |
| :---: | :---: | :---: |
| <img src="screenshots/onboarding_light.png" width="250" alt="Discover Convenience Light"/> | <img src="screenshots/onboarding_dark.png" width="250" alt="Discover Deliciousness Dark"/> | <img src="screenshots/auth_screen.png" width="250" alt="Authentication Screen"/> |

### Discovery & Menu Details
| Exploration / Search | Restaurant Profile | Item Customisation |
| :---: | :---: | :---: |
| <img src="screenshots/explore.png" width="250" alt="Search and Filters"/> | <img src="screenshots/restaurant_detail.png" width="250" alt="Shake House Menu"/> | <img src="screenshots/dish_customise.png" width="250" alt="The Classic Smash Customisation"/> |

---

## Features

- 🔐 **Auth** — Email login, OTP verification, password reset, persistent sessions
- 👤 **Profile Setup** — 6-step onboarding with GPS auto-fill and avatar image picker
- 🍽️ **Restaurant Discovery** — Browse, filter by cuisine/rating/price, search, favourites
- 🏪 **Restaurant Detail** — Collapsing hero header, menu categories, dish listings
- 🍔 **Dish Customisation** — Size selection, toppings, quantity controls, live price calculation
- 🛒 **Cart** — In progress
- 📦 **Orders** — In progress
- 🏠 **Home** — In progress

---

## Architecture

WITNESS 8-pillar clean architecture — one of the core principles of this project.
lib/
├── core/           # Shared models, theme, network, router
├── features/       # One folder per feature
│   ├── auth/
│   ├── profile/
│   ├── restaurant/
│   ├── dish/
│   └── ...
└── shared/         # Reusable widgets and enums
**Build order per feature:** UI → Models → Hive → Dio → Riverpod

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter |
| State Management | Riverpod (riverpod_annotation) |
| Models | Freezed |
| Local Storage | Hive CE, Drift (Coming soon) |  
| Networking | Dio |
| Navigation | GoRouter |
| Backend (coming) | Supabase |

---

## Key Patterns Used

- **LSEE** — Loading, Success, Empty, Error union states for every data screen
- **Guard → Cast → Logic → State** — safe union state mutation pattern
- **Offline-first** — Hive storage with API fallback via Repository pattern
- **Screens = logic controllers, Widgets = pure reusable UI**

---

## Running the Project

```bash
git clone https://github.com/Kamcel/foodie.git
cd foodie
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
About the Developer
Self-taught Flutter developer with a UI/UX design background.
Building Foodie as a portfolio project while completing a B.Tech in Biochemistry.
📫 edmondmarcellinuskamji@gmail.com
🐦 @studylinkgo