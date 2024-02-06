library screen_go;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'models/device_data.dart';
import 'models/screen_go_model.dart';

class ScreenGo extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    ScreenGoModel deviceInfo,
  ) builder;
  final bool materialApp;
  const ScreenGo({
    super.key,
    required this.builder,
    this.materialApp = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final MediaQueryData mediaQueryData = MediaQuery.of(context);

        if (materialApp) {
          DeviceData.setDeviceData(
            context,
            constraints,
            mediaQueryData.orientation,
          );
        }

        final deviceInfo = ScreenGoModel(
          screenHeight: mediaQueryData.size.height,
          screenWidth: mediaQueryData.size.width,
          orientation: mediaQueryData.orientation,
          parentHeight: constraints.maxHeight,
          parentWidth: constraints.maxWidth,
          deviceType: DeviceData.getDeviceType(defaultTargetPlatform),
          screenType: DeviceData.getScreenType(mediaQueryData),
        );

        return builder(
          context,
          deviceInfo,
        );
      },
    );
  }
}
