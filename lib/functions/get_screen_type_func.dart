import 'package:flutter/material.dart';
import 'package:screen_go/enums/screen_type_enums.dart';

DeviceScreenType getScreenType(MediaQueryData mediaQuery) {
  final Orientation orientation = mediaQuery.orientation;
  double width = mediaQuery.size.width;

  if (orientation == Orientation.landscape) {
    width = mediaQuery.size.height;
  }

  if (width >= 1100) {
    return DeviceScreenType.desktop;
  } else if (width >= 650) {
    return DeviceScreenType.tablet;
  } else {
    return DeviceScreenType.mobile;
  }
}
