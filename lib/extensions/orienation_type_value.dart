import 'package:flutter/material.dart';
import '../models/device_data.dart';

extension OrientationValueType on dynamic {
  dynamic otv({
    required dynamic portrait,
    required dynamic landscape,
  }) {
    if (DeviceData.orientation == Orientation.portrait) {
      return portrait;
    } else if (DeviceData.orientation == Orientation.landscape) {
      return landscape;
    }
  }
}
