import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:screen_go/enums/screen_type_enums.dart';
import 'package:screen_go/models/device_data.dart';

import '../enums/device_type_enums.dart';

DeviceScreenType getScreenType(MediaQueryData mediaQuery) {
  final Orientation orientation = mediaQuery.orientation;
  double width = mediaQuery.size.width;

  if ((DeviceData.getDeviceType(defaultTargetPlatform) != DeviceType.mobile ||
          DeviceData.getDeviceType(defaultTargetPlatform) != DeviceType.ios) &&
      orientation == Orientation.landscape) {
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
