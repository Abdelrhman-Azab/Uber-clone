# Flutter UI Kit Documentation

**Overview**

**Introduction**

This UI Kit package provides a collection of pre-designed, reusable widgets that can be easily integrated into other projects. The package includes a "storybook" feature that allows developers to view and interact with all available widgets.

**Features**

* Ready-to-use Widgets: A variety of customizable widgets for different use cases.
* Storybook: A dedicated environment to browse and test all widgets in the package.
* Customizable: Each widget is designed to be easily customizable to fit different project requirements.

# Getting Started

**Installation**

To add the Flutter UI Kit package to your project, include the following dependency in your `pubspec.yaml` file:

```
dependencies:
  flutter_library:
    git:
      url: git@github.com:dexcom-inc/flutter-polaris-uikit.git
ref: master
```
Run `flutter pub get` to install the package.

**Storybook**

The Storybook feature allows you to explore and test all widgets in the UI kit. To run the `storybook`, follow these steps:
1. Navigate to the storybook directory in the root of the package.
2. Run the following command:
   `flutter run`
3. The app will launch, displaying all available widgets with their customizable properties.

**Storybook Interface Overview**

* Left Panel - Widget Selection:
  * This panel displays a list of all the widgets available in the UI kit. You can browse through the list and select any widget you want to preview.
* Right Panel - Customization Options:
  * Once a widget is selected, the right panel allows you to customize its properties.
  * You can modify aspects such as colors, text, padding, and any other properties exposed by the widget.
* Middle Panel - Widget Preview:
  * This central area displays the selected widget as it would appear with the applied customizations.
  * This live preview helps you see how the widget behaves and looks with different settings.
* Bottom Panel - Environment Settings:
  * The bottom panel provides controls to simulate different environments.
  * Light/Dark Mode: Toggle between light and dark themes to see how the widget adapts to different color schemes.
  * Platform (Android/iOS) Switch between Android and iOS to see how the widget appears on different platforms.
  * Device Selection: Choose from a variety of devices (e.g., phones, tablets) to see how the widget scales and adapts to different screen sizes and resolutions.
<img width="1138" alt="Screenshot 2024-09-04 at 10 09 43 PM" src="https://github.com/user-attachments/assets/47d43c70-c41b-4f83-860f-1d65fff5b026">

  
