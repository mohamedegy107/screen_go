import 'responsive_screens.dart';
import 'package:flutter/material.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Responsive Widgets',
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Responsive Text Size
            Text(
              'Responsive Text Size',
              style: TextStyle(
                fontSize: 21.sp,
              ),
            ),

            // Responsive Icon Size
            Icon(
              Icons.account_circle,
              size: 30.sp,
            ),

            // Responsive width and height Size and padding
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              height: 30.h,
              width: 70.w,
              color: Colors.amber,
              child: Container(
                color: Colors.indigoAccent,
              ),
            ),

            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'see responsive screens   ',
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
                        builder: (context) => Responsive_Screens(),
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
      ),
    );
  }
}
