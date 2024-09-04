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

# How theming is working

# Dexlist

The DexListTile widget is a customizable list tile component designed to be used within a DexList widget. It provides options for adding leading and trailing widgets, handling taps, displaying dividers, and applying custom styles. This widget is displayed differently based on the platform (android & ios).

```
class DexListTile extends StatefulWidget {
  final DexListTileLeading? leading;
  final DexListTileTrailing? trailing;
  final GestureTapCallback? onTap;
  final bool hasMoreInfo;
  final bool? showDivider;
  final DexListStyle? cellStyle;
  final bool selected;

  const DexListTile({
    super.key,
    this.leading,
    this.trailing,
    this.onTap,
    this.hasMoreInfo = false,
    this.showDivider,
    this.cellStyle,
    this.selected = false,
  });

  @override
  State<DexListTile> createState() => _DexListTileState();
}
```

# DexListTileLeading Abstract Class

**Overview**

The DexListTileLeading abstract class serves as a blueprint for creating leading widgets within the DexListTile component. This class provides a flexible interface for defining various types of leading content, such as icons, text, buttons, and custom widgets, which can be displayed at the beginning (leading edge) of a list tile. The class also includes several static factory methods to easily instantiate specific types of leading widgets.

**Methods**
render(BuildContext context) => Container();

* Purpose: This method should be overridden by subclasses to define the specific rendering logic for the leading widget.
* Returns: A Widget that represents the leading content.
* Default Implementation: Returns an empty Container widget.

**Static Factory Methods**
  
The DexListTileLeading class includes a variety of static methods that return instances of different leading widget types:

**Text-Based Leadings**

* description({required String text})
  * Creates a leading widget that displays a description text.
  
* textButtonDestructive({required String title})
  * Creates a leading widget that displays a destructive text button.
  
* textButtonLink({required String title})
  * Creates a leading widget that displays a link-style text button.

* textButtonLinkIcon({required String title, required Widget icon})
  * Creates a leading widget that displays a link-style text button with an icon.
  
* textCentered({required String text})
  * Creates a leading widget that displays centered text.
  
**Title-Based Leadings**
* title({required String title})
  * Creates a leading widget that displays a title.
  
* titleIcon({required String title, required Widget icon})
  * Creates a leading widget that displays a title with an accompanying icon.
  
* titleSubtitle({required String title, required String subtitle})
  * Creates a leading widget that displays a title with a subtitle.
  
* titleSubtitleIcon({required String title, required String subtitle, required Widget icon})
  * Creates a leading widget that displays a title, subtitle, and an icon.
  
* titleSubtitleIcon24Top({required String title, required String subtitle, required Widget icon})
  * Similar to titleSubtitleIcon, but the icon is positioned 24 pixels from the top.
  
**RadioButton-Based Leadings**
* titleSubtitleRadioButton({required String title, required String subtitle, required bool selected})
  * Creates a leading widget that displays a title, subtitle, and a radio button indicating selection.
  
* titleRadioButton({required String title, required bool selected})
  * Creates a leading widget that displays a title with a radio button indicating selection.
  
**Small Title-Based Leadings**

* titleSubtitleS({required String title, required String subtitle})
  * Creates a leading widget that displays a smaller version of a title and subtitle.
  
* titleSubtitleSIcon({required String title, required String subtitle, required Widget icon})
  * Creates a leading widget that displays a smaller title, subtitle, and an icon.
  
**Slider Leading**

* dexSlider({required DexSliderConfig sliderConfig})
  * Creates a leading widget that contains a DexSlider configured with the provided DexSliderConfig.
  
**Custom Leading**

* custom({required Widget child})
  * Allows the creation of a custom leading widget by providing a custom child widget.
  
**Usage**

The DexListTileLeading class is designed to be extended or instantiated using one of the provided factory methods. It offers a wide range of pre-defined leading widgets to suit various UI requirements, from simple text or icon widgets to more complex combinations of titles, subtitles, and icons.

Example usage in a DexListTile:

```
DexListTile(
  leading: DexListTileLeading.icon(icon: Icon(Icons.person)),
  trailing: DexListTileTrailing.text(title: 'More info'),
  onTap: () {
    print('Tile tapped!');
  },
)
```

In this example, the DexListTile is configured with an icon as the leading widget, demonstrating how to use one of the factory methods provided by DexListTileLeading.


# Needs to be done
* Left to right is not working
* Icons don't change in the dark mode
