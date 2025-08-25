# Clot - Clothing Store App UI

## Overview

Clot is a clothing store mobile application UI designed with Flutter, focusing on a clean, responsive, and user-friendly interface for an e-commerce platform. The app showcases a modern clothing store experience, including browsing products, viewing product details, managing a shopping bag, checking out, and tracking orders. It follows the MVVM (Model-View-ViewModel) architecture and uses temporary data from a repository to simulate product listings. The UI is built with reusable components, responsive design, and localization support to ensure a consistent and scalable experience.

Key technologies:
- **Flutter**: For cross-platform UI development.
- **GetX**: For state management, dependency injection, and routing.
- **Flutter Screenutil**: For responsive UI design.
- **Temporary Data**: Simulated product data stored in a repository for UI testing.

This project focuses solely on the UI layer, with placeholders for future integration with a backend (e.g., Firebase, REST API) for real data and functionality.

## Features

- **Splash Screen**: Animated entry point with app branding.
- **Home Screen**: Displays a list of clothing products with search and filter options.
- **Product Details**: Detailed view of selected products with images, descriptions, and pricing.
- **Categories**: Browse products by categories (e.g., Men, Women, Kids).
- **Shopping Bag**: View and manage selected items before checkout.
- **Checkout**: UI for entering payment and shipping details.
- **Orders**: Track order history and status.
- **Notifications**: Display app notifications (e.g., order updates, promotions).
- **Profile**: User profile view for account settings.
- **Bottom Navigation**: Seamless navigation between Home, Categories, Bag, Orders, and Profile screens.
- **Search Functionality**: Search bar to filter products by name or category.
- **Responsive UI**: Uses custom components (buttons, cards, text fields) and themes for consistent styling.

## Architecture

The app follows clean architecture principles with a focus on the presentation layer:
- **MVVM Pattern**: Views handle UI rendering, ViewModels manage UI state and logic, Models represent data structures (e.g., products).
- **Repository Pattern**: Abstracts data source (currently temporary data) for modularity and future backend integration.
- **Dependency Injection**: Handled via GetX bindings for ViewModels.
- **Folder Structure**:
  ```
  ├── bindings/          # GetX bindings for dependency injection
  ├── data/              # Data-related utilities (e.g., exceptions, not yet implemented)
  ├── model/             # Data models
  │   └── products.dart  # Product model for clothing items
  ├── repository/        # Data access layer
  │   └── products.dart  # Temporary product data for UI
  ├── res/               # Resources
  │   ├── assets/        # Icons and images
  │   │   ├── icons.dart
  │   │   └── images.dart
  │   ├── colors/        # Color constants
  │   │   └── appColors.dart
  │   ├── components/    # Reusable UI widgets
  │   │   ├── buttonComponent.dart
  │   │   ├── card.dart
  │   │   ├── ImageBox.dart
  │   │   ├── imageLoader.dart
  │   │   ├── searchComponent.dart
  │   │   └── textFormFieldComponent.dart
  │   ├── localization/  # Translation setup
  │   │   └── localization.dart
  │   ├── routes/        # GetX routing
  │   │   ├── routeNames.dart
  │   │   └── routes.dart
  │   ├── theme/         # App theme configuration
  │   │   └── theme.dart
  │   └── urls/          # API/URL constants (for future backend integration)
  ├── utils/             # Utility functions (e.g., toasts, helpers)
  │   └── Utils.dart
  ├── view/              # UI screens
  │   ├── bag.dart       # Shopping bag view
  │   ├── bottomNavScreen.dart  # Bottom navigation container
  │   ├── categories.dart  # Product categories view
  │   ├── checkout.dart  # Checkout process UI
  │   ├── detailScreen.dart  # Product details view
  │   ├── done.dart      # Order confirmation screen
  │   ├── homeScreen.dart  # Main product listing
  │   ├── notifications.dart  # Notifications view
  │   ├── orders.dart    # Order history view
  │   ├── profile.dart   # User profile view
  │   └── splaashScreen.dart  # Splash screen (typo: should be splashScreen.dart)
  └── view_model/        # ViewModels for logic and state
      └── mainVM.dart    # Manages UI state and temporary data
  ```

- **Data Flow**:
    - Repository (`products.dart`) provides temporary product data.
    - ViewModel (`mainVM.dart`) fetches data from the repository and exposes it to Views.
    - Views bind to ViewModel via GetX for reactive UI updates.

## Data Structure

- **Product Model** (`products.dart`):
    - Fields (assumed based on typical e-commerce apps):
        - `id`: Unique identifier for the product.
        - `name`: Product name (e.g., "Casual T-Shirt").
        - `category`: Category (e.g., "Men", "Women").
        - `price`: Product price.
        - `image`: Image path or URL (currently local assets).
        - `description`: Product details.
    - Temporary data stored in `repository/products.dart` for UI simulation.

Future integration can replace temporary data with a backend (e.g., Firestore collection for products).

## Setup and Installation

1. **Prerequisites**:
    - Flutter SDK (v3.x or later).
    - Android/iOS emulators or physical devices.
    - No backend required (uses temporary data).

2. **Clone the Repository**:
   ```
   git clone <your-repo-url>
   cd clot
   ```

3. **Install Dependencies**:
   ```
   flutter pub get
   ```

4. **Add Assets**:
    - Place images/icons in `res/assets/` and update `icons.dart`/`images.dart` accordingly.
    - Ensure `pubspec.yaml` includes asset paths:
      ```
      flutter:
        assets:
          - res/assets/images/
          - res/assets/icons/
      ```

5. **Run the App**:
   ```
   flutter run
   ```

6. **Build for Release**:
    - Android: `flutter build apk`
    - iOS: `flutter build ios`

## How It Works

### App Flow
1. **Splash Screen** (`splaashScreen.dart`):
    - Animated UI with app logo and branding.
    - Redirects to Bottom Navigation Screen (home).

2. **Bottom Navigation Screen** (`bottomNavScreen.dart`):
    - Hosts navigation bar for switching between Home, Categories, Bag, Orders, and Profile.
    - Central hub for app navigation.

3. **Home Screen** (`homeScreen.dart`):
    - Displays product cards (from `card.dart`) with images, names, and prices.
    - Includes `searchComponent.dart` for filtering products.
    - Tapping a product navigates to Detail Screen.

4. **Categories Screen** (`categories.dart`):
    - Lists products grouped by categories (e.g., Men, Women).
    - Uses temporary data from repository.

5. **Detail Screen** (`detailScreen.dart`):
    - Shows product details (image, description, price).
    - Option to add to bag.

6. **Bag Screen** (`bag.dart`):
    - Displays selected products with quantity and total price.
    - Button to proceed to checkout.

7. **Checkout Screen** (`checkout.dart`):
    - Form for payment and shipping details (using `textFormFieldComponent.dart`).
    - Navigates to Done Screen on submission.

8. **Done Screen** (`done.dart`):
    - Confirmation screen for successful order placement.

9. **Orders Screen** (`orders.dart`):
    - Lists past orders with status (simulated data).

10. **Notifications Screen** (`notifications.dart`):
    - Displays app notifications (e.g., order updates, promotions).

11. **Profile Screen** (`profile.dart`):
    - User profile view for account details and settings.

### Key Code Highlights
- **Products Repository** (`repository/products.dart`): Provides temporary product data for UI.
- **MainViewModel** (`view_model/mainVM.dart`): Manages product data fetching and UI state.
- **Custom Components** (`res/components/`):
    - `buttonComponent.dart`: Reusable buttons.
    - `card.dart`: Product card for listings.
    - `searchComponent.dart`: Search bar for filtering.
    - `textFormFieldComponent.dart`: Form fields for checkout.
    - `ImageBox.dart`/`imageLoader.dart`: Handle image rendering.
- **Utils.dart**: Helper functions for toasts, navigation, and formatting.
- **Theme** (`res/theme/theme.dart`): Consistent app styling with colors from `appColors.dart`.

## Limitations and Improvements
- **Temporary Data**: Currently uses static data; integrate a backend (e.g., Firestore, API) for real products.
- **No Authentication**: Add user login/signup for personalized profiles and order tracking.
- **Limited Functionality**: Checkout and orders are UI-only; implement payment gateways and order management.
- **Localization**: Expand translation support for more languages.
- **Enhancements**: Add product filtering/sorting, wishlist, or push notifications.

