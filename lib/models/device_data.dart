import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../enums/device_type_enums.dart';
import '../enums/screen_type_enums.dart';

class DeviceData {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Orientation
  static late Orientation orientation;

  /// Type of Screen
  static late DeviceScreenType screenType;

  /// Type of Device
  static late DeviceType deviceType;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  /// Device's Aspect Ratio
  static late double aspectRatio;

  /// Device's Pixel Ratio
  static late double pixelRatio;

  static void setDeviceData(
    BuildContext context,
    BoxConstraints constraints,
    Orientation currentOrientation,
  ) {
    // Sets boxconstraints and orientation
    boxConstraints = constraints;
    orientation = currentOrientation;

    // Sets screen width and height
    width = boxConstraints.maxWidth;
    height = boxConstraints.maxHeight;

    // set screen type and device type
    screenType = getScreenType(MediaQuery.of(context));
    deviceType = getDeviceType(defaultTargetPlatform);

    // Sets aspect and pixel ratio
    aspectRatio = constraints.constrainDimensions(width, height).aspectRatio;
    pixelRatio = View.of(context).devicePixelRatio;
  }

  static DeviceScreenType getScreenType(MediaQueryData mediaQuery) {
    final Orientation orientation = mediaQuery.orientation;
    double width = mediaQuery.size.width;

    if ((deviceType != DeviceType.mobile || deviceType != DeviceType.ios) &&
        orientation == Orientation.landscape) {
      width = mediaQuery.size.height;
    }

    if (width >= 1100) {
      return DeviceScreenType.desktop;
    } else if (width >= 850) {
      return DeviceScreenType.tablet;
    } else {
      return DeviceScreenType.mobile;
    }
  }

  static DeviceType getDeviceType(TargetPlatform deviceType) {
    if (kIsWeb) {
      return DeviceType.web;
    } else if (deviceType == TargetPlatform.android) {
      return DeviceType.mobile;
    } else if (deviceType == TargetPlatform.iOS) {
      return DeviceType.ios;
    } else if (deviceType == TargetPlatform.windows) {
      return DeviceType.windows;
    } else if (deviceType == TargetPlatform.linux) {
      return DeviceType.linux;
    } else if (deviceType == TargetPlatform.macOS) {
      return DeviceType.macOs;
    } else {
      return DeviceType.fuchsia;
    }
  }
}
