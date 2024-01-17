# Screen Go

<p align="center" >
  <strong>sizer_pro is helps you to create responsive UI easily.</strong>
  <br />
  <br />
<a href="https://www.buymeacoffee.com/mohamedelsafty" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
</p>

<br />

Screen Go helps implement a responsive layout by providing helper widgets and extensions.

![Responsive Image](https://github.com/mohamedegy107/screen_go/blob/main/example/images/responsive.jpg)

# Content

- [Installation](#installation)
- [Usage](#usage)
- [Parameters](#parameters)
- [Take Note](#take-note)

# Installation ⬇️
Add `screen_go` to pubspec.yaml
```yaml
dependencies:
  screen_go:
```

# Usage 💻

## Import the Package
```dart
import 'package:screen_go/screen_go.dart';
```

## Wrap MaterialApp with ResponsiveSizer widget
```dart
ScreenGo(
  materialApp: true,
  builder: (context, deviceInfo) {
    return MaterialApp(
      home: HomePage(),
    );
  },
);
```

## Widget Size 🕓
```dart
Container(
  width: Adaptive.w(20),    // This will take 20% of the screen's width
  height: 30.5.h     // This will take 30.5% of the screen's height
)
```

## Font size 🆎
```dart
Text(
  'Screen Go', 
  style: TextStyle(fontSize: 15.sp), 
)
```

## Padding ⏹
```dart
    Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.w),
      child: Container(),
    );
```

## Icon size 💡
```dart
    Icon(
     Icons.home,size: 12.sp,
    );
```

## Orientation 🔄

If you want to support both portrait and landscape orientations use otv method or extension to set value for each orientation type.

```dart
otv(
    portrait: Container(   // Widget for Portrait
      width: 100.w,
      height: 20.5.h,
   ), 
    landscape: Container(   // Widget for Landscape
      width: 100.w,
      height: 12.5.h,
   ),
)
Or Return any type of Data
otv(
    portrait: [Any Data Type], 
    landscape: [Any Data Type],
)
Or access this method as an extension
child: Widget.otv(
    portrait: Container(   // Widget for Portrait
      width: 100.w,
      height: 20.5.h,
   ), 
    landscape: Container(   // Widget for Landscape
      width: 100.w,
      height: 12.5.h,
   ),
)
```

## ScreenType 📱

If you want get screen type use the ``DeviceData.screenType`` method or use stv method or extension to set value for each screen type.

```dart
stv(
    mobile: Container(   // Widget for Mobile
      width: 100.w,
      height: 20.5.h,
   ), 
    tablet: Container(   // Widget for Tablet
      width: 100.w,
      height: 12.5.h,
   ),
    desktop: Container(   // Widget for Desktop
      width: 100.w,
      height: 12.5.h,
   ),
)
Or Return any type of Data
stv(
    mobile: [Any Data Type], // Widget for Mobile
    tablet: [Any Data Type], // Widget for Tablet
    desktop: [Any Data Type], // Widget for Desktop
)
Or access this method as an extension
child: Widget.stv(
    mobile: Container(   // Widget for Mobile
      width: 100.w,
      height: 20.5.h,
   ), 
    tablet: Container(   // Widget for Tablet
      width: 100.w,
      height: 12.5.h,
   ),
    desktop: Container(   // Widget for Desktop
      width: 100.w,
      height: 12.5.h,
   ),
)
```

## ResponsiveScreen Widget 📱📟💻🖥️

If you want get screen type use the ``DeviceData.screenType`` method or use ResponsiveScreen widget to set widget for each screen type.

```dart
import 'package:screen_go/responsive_screen.dart';

ResponsiveScreen(
      mobile:  Container(
        child: Text('For Mobile Screen'),
      ),
      tablet:  Container(
        child: Text('For Tablet Screen'),
      ),
      desktop:  Container(
        child: Text('For Desktop Screen'),
      ),
)
```

## You can make customize responsive to your widgets as you like just warp your widget in ScreenGo widget to get all device and screen info  

```dart
Scaffold(
  body: ScreenGo( 
  builder: (context, deviceInfo) {
    return Contanier(
        hieght: deviceInfo.screenHeight; // get screen height and set container height 
        width: deviceInfo.screenWidth; // get screen width and set container width
        child: SizedBox(
               hieght: deviceInfo.parentHeight / 2; // get the height of the container and make the sizedbox take half the height of the container
               width: deviceInfo.parentWidth / 2; // get the width of the container and make the sizedbox take half the width of the container
        ),
      ),
    },
  ),
)

// you can also get more of deviceInfo parameter like:
  // deviceInfo.deviceType;   // to get device type
  // deviceInfo.orientation;  // to get device orientation
  // deviceInfo.screenHeight; // to get screen height
  // deviceInfo.screenWidth;  // to get screen width
  // deviceInfo.screenType;   // to get screen type [mobile - tablet - desktop]
  // deviceInfo.parentHeight; // to get parent widget height
  // deviceInfo.parentWidth;  // to get parent widget width
```

# Parameters ⚙️

## Extensions
* `.h` - Calculated percentage of the device's height (40.h -> 40% of device's height)
* `.w` - Calculated percentage of the device's width (40.w -> 40% of device's width)
* `.sp` - Calculated sp based on the device's pixel density and aspect ratio
* `.dp` - Calculated dp based on the device's pixel density

<br />

* `DeviceData.boxConstraints` - BoxConstraints of the device
* `DeviceData.orientation` - Screen Orientation of the device (portrait or landscape)
* `DeviceData.screenType` - Screen type of the device (mobile or tablet)
* `DeviceData.aspectRatio` - Aspect ratio of the device
* `DeviceData.pixelRatio` - Pixel density ratio of the device

<br />

* `.cm` - The respective value in value in centimeters
* `.mm` - The respective value in value in millimeters
* `.Q` - The respective value in quarter-millimeters
* `.inches` - The respective value in inches
* `.pc` - The respective value in picas (1/6th of 1 inch)
* `.pt` - The respective value in points (1/72th of 1 inch)
* `.px` - The respective value in pixels


# Take Note 📝

You need to import `screen_go` package in order to access `number.h`, `number.w`, `number.dp`, and `number.sp`

**Auto import in VSCode and Android Studio doesn't work for dart extension methods.** Typing `10.h` would not bring up auto import suggestion for this package

One workaround is to type `DeviceData` so that the auto import suggestion would show up:
```dart
import 'package:screen_go/screen_go.dart';
```
