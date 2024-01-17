import 'pro_customize_responsive.dart';
import 'package:flutter/material.dart';
import 'package:screen_go/extensions/responsive_nums.dart';
import 'package:screen_go/responsive_screen.dart';

class Responsive_Screens extends StatelessWidget {
  const Responsive_Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Responsive Screens',
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ResponsiveScreen(
            mobile: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              alignment: Alignment.center,
              height: 30.h,
              width: 70.w,
              color: Colors.amber,
              child: Text(
                'Mobile Screen',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            tablet: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              alignment: Alignment.center,
              height: 30.h,
              width: 70.w,
              color: Colors.deepOrange,
              child: Text(
                'Tablet Screen',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            desktop: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              alignment: Alignment.center,
              height: 30.h,
              width: 70.w,
              color: Colors.green,
              child: Text(
                'Desktop Screen',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'see pro customize responsive   ',
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProCustomizeResponsive(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_circle_right,
                  color: Colors.orange,
                  size: 25.sp,
                ),
              ),
            ],
          ),
          //
        ],
      ),
    );
  }
}
