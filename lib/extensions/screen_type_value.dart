import 'package:flutter/material.dart';
import '../functions/get_screen_type_func.dart';
import '../enums/screen_type_enums.dart';

extension ScreenTypeValue on dynamic {
  dynamic stv({
    required BuildContext context,
    required dynamic mobile,
    required dynamic tablet,
    required dynamic desktop,
  }) {
    if (getScreenType(MediaQuery.of(context)) == DeviceScreenType.desktop) {
      return desktop;
    } else if (getScreenType(MediaQuery.of(context)) ==
        DeviceScreenType.tablet) {
      return tablet;
    } else if (getScreenType(MediaQuery.of(context)) ==
        DeviceScreenType.mobile) {
      return mobile;
    } else {
      return this;
    }
  }
}
