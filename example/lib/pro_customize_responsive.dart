import 'package:flutter/material.dart';
import 'package:screen_go/extensions/responsive_nums.dart';
import 'package:screen_go/screen_go.dart';

class ProCustomizeResponsive extends StatelessWidget {
  const ProCustomizeResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pro Customize Responsive',
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Center(
        child: ScreenGo(builder: (context, deviceInfo) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            alignment: Alignment.center,
            height: deviceInfo.screenHeight / 3, // set height by screen height
            width: deviceInfo.screenWidth / 1.5, // set width by screen width
            color: Colors.amber,
            child: Container(
              height: deviceInfo.parentHeight /
                  2, // set height by parent widget height
              width: deviceInfo.parentWidth /
                  2, // set width by parent widget width
              color: Colors.indigoAccent,
            ),
          );
        }),
      ),
    );
  }
}
