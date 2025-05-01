# Restaurant App with Hero Animation

This Flutter application presents a list of restaurant categories (such as Chinese, Pizza, BBQ, and more) with images and details. It features smooth screen transitions using Flutter’s `Hero` widget to create engaging animations between the list and detail screen.

## Features

- Displays a variety of restaurant categories with attractive visuals.
- Each category includes a name, image, details, and a list of food items.
- Seamless navigation to a detailed screen using shared `Hero` animations.
- Slowed-down animation using `timeDilation` to enhance the learning experience.

## Getting Started

### Prerequisites

- Flutter SDK (3.x or later)
- Dart SDK
- VSCode with Flutter plugin

### Installation

1. **Clone the repository:**
```bash
git clone https://github.com/mahamshahzad8/restaurant_app.git
cd restaurant_app
```

2. **Install dependencies:**
```bash
flutter pub get
```

3. **Run the app:**
```bash
flutter run
```

## Assets

This app uses locally stored images for each restaurant category. Make sure the following images are located in the `assets/images/` directory:

- chinese.png  
- pizza.png  
- burger.png  
- bbq.png  
- dessert.png  
- shake.png

Also, register them in your `pubspec.yaml` file:
```yaml
flutter:
  assets:
    - assets/images/chinese.png
    - assets/images/pizza.png
    - assets/images/burger.png
    - assets/images/bbq.png
    - assets/images/dessert.png
    - assets/images/shake.png
```

## Usage

Launch the application.

Explore the list of restaurant categories.

Tap on any category to navigate to its detailed screen.

Observe the Hero animation as the image transitions between the list and detail screen.

To control the animation speed for better understanding, you can modify the `timeDilation` value in `main()`:
```dart
timeDilation = 5.0; 
```

## Built With

- **Flutter** – UI toolkit for cross-platform development  
- **Dart** – Programming language used in Flutter  
- **Material Design** – For consistent and modern UI components  
- **Hero Widget** – For creating animated transitions between screens

## Author

Maham Shahzad  

