import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(
      DevicePreview(
        enabled: !true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, ore, type) {
      return MaterialApp(
        theme: ThemeData(
          primaryColor: kOraColor,
          fontFamily: 'Mont',
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      );
    });
  }
}
