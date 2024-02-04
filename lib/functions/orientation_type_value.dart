import 'package:flutter/material.dart';

dynamic otv({
  required BuildContext context,
  required dynamic portrait,
  required dynamic landscape,
}) {
  if (MediaQuery.of(context).orientation == Orientation.portrait) {
    return portrait;
  } else {
    return landscape;
  }
}
