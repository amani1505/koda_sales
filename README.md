# SMS Management App

A modern Flutter application for managing SMS communications, customer relationships, and message analytics with a beautiful, responsive UI.

## Overview

SMS Management App is a comprehensive solution for businesses to manage their SMS communications efficiently. The app provides features for customer management, message categorization, chat functionality, and detailed analytics dashboards.

## Features

- **Dashboard Analytics**: Visual insights with charts and statistics

  - Total messages, customers, and categories tracking
  - Interactive charts using FL Chart
  - Real-time data updates

- **Customer Management**:

  - View and manage customer contacts
  - Detailed customer profiles
  - Customer categorization

- **Message Management**:

  - Send and receive SMS messages
  - Chat interface for conversations
  - Message history and search
  - Bulk messaging capabilities

- **Category Organization**:

  - Organize customers and messages by categories
  - Custom category creation and management

- **Authentication**:
  - Secure login system
  - Onboarding flow for new users
  - Token-based authentication

## Tech Stack

### Core Framework

- **Flutter SDK**: >=3.0.0 <4.0.0
- **Dart**: Latest stable version

### State Management & Architecture

- **Riverpod**: Modern reactive state management (flutter_riverpod, riverpod_annotation)
- **Freezed**: Immutable data classes and union types
- **Equatable**: Value equality for Dart classes

### Navigation

- **GoRouter**: Declarative routing and deep linking

### Networking & API

- **Dio**: HTTP client for API calls
- **Retrofit**: Type-safe REST client
- **JSON Serialization**: Automated JSON parsing

### UI/UX Components

- **Flutter ScreenUtil**: Responsive UI adaptation
- **Google Fonts**: Custom typography
- **Flutter SVG**: Vector graphics support
- **Cached Network Image**: Optimized image loading
- **Shimmer**: Loading skeleton animations

### Data Visualization

- **FL Chart**: Beautiful, customizable charts and graphs

### Animations

- **Lottie**: Complex animations from JSON
- **Animate Do**: Simple, reusable animations
- **Flutter Staggered Animations**: List and grid animations

### Local Storage

- **Hive**: Lightweight, fast NoSQL database
- **Shared Preferences**: Key-value storage for settings

### Development Tools

- **Build Runner**: Code generation
- **Flutter Lints**: Code quality and style enforcement

## Project Architecture

The project follows Clean Architecture principles with clear separation of concerns:

```
lib/
├── core/                    # Core utilities and configurations
│   ├── constants/          # App-wide constants
│   ├── network/            # Network client setup
│   ├── theme/              # App theming
│   └── utils/              # Utility functions
├── data/                    # Data layer
│   ├── datasources/        # API and local data sources
│   ├── models/             # Data models (Freezed)
│   └── repositories/       # Repository implementations
├── presentation/            # Presentation layer
│   ├── providers/          # Riverpod providers
│   ├── screens/            # UI screens
│   │   ├── auth/           # Authentication screens
│   │   ├── dashboard/      # Dashboard screen
│   │   ├── customers/      # Customer management
│   │   ├── categories/     # Category management
│   │   └── messages/       # Messaging screens
│   └── widgets/            # Reusable widgets
└── routes/                  # App routing configuration
```

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK
- Android Studio / Xcode (for mobile development)
- An IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository:

```bash
git clone <repository-url>
cd koda_sales
```

2. Install dependencies:

```bash
flutter pub get
```

3. Generate code for models and providers:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Configure API endpoint:

   - Update the `baseUrl` in `lib/core/constants/app_constants.dart`

5. Run the app:

```bash
flutter run
```

### Development Commands

```bash
# Run code generation in watch mode
flutter pub run build_runner watch --delete-conflicting-outputs

# Clean and rebuild
flutter clean && flutter pub get

# Run tests
flutter test

# Analyze code
flutter analyze

# Check formatting
flutter format --set-exit-if-changed .
```

## Configuration

### API Configuration

Update the API endpoint in `lib/core/constants/app_constants.dart`:

```dart
static const String baseUrl = 'https://your-api-url.com/api';
```

### Theme Customization

Modify app theme in `lib/core/theme/app_theme.dart`

## Key Dependencies

| Package            | Purpose            |
| ------------------ | ------------------ |
| flutter_riverpod   | State management   |
| go_router          | Navigation         |
| dio & retrofit     | API communication  |
| hive               | Local database     |
| fl_chart           | Data visualization |
| flutter_screenutil | Responsive design  |
| freezed            | Immutable models   |

## Building for Production

### Android

```bash
flutter build apk --release
# or for app bundle
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is proprietary software. All rights reserved.

## Support

For questions or support, please contact the development team.
