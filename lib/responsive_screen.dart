import 'package:flutter/material.dart';
import 'enums/screen_type_enums.dart';
import 'models/device_data.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;
  const ResponsiveScreen({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    if (DeviceData.screenType == DeviceScreenType.desktop) {
      return desktop;
    } else if (DeviceData.screenType == DeviceScreenType.tablet) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
