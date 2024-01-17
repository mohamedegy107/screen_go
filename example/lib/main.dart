
import 'package:flutter/material.dart';
import 'package:screen_go/screen_go.dart';
import 'responsive_widgets.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenGo(
        materialApp: true,
        builder: (context, deviceInfo) {
          return MaterialApp(
            title: 'Screen Go',
            home: HomeScreen(),
          );
        });
  }
}
