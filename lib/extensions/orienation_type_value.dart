import 'package:flutter/material.dart';

extension OrientationValueType on dynamic {
  dynamic otv({
    required BuildContext context,
    required dynamic portrait,
    required dynamic landscape,
  }) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return portrait;
    }

    return landscape;
  }
}
