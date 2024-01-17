import 'package:flutter/material.dart';
import 'package:screen_go/enums/device_type_enums.dart';

import '../enums/screen_type_enums.dart';

class ScreenGoModel {
  final double screenHeight;
  final double screenWidth;
  final Orientation orientation;
  final double parentHeight;
  final double parentWidth;
  final DeviceScreenType screenType;
  final DeviceType deviceType;
  ScreenGoModel({
    required this.screenHeight,
    required this.screenWidth,
    required this.orientation,
    required this.parentHeight,
    required this.parentWidth,
    required this.screenType,
    required this.deviceType,
  });
}
