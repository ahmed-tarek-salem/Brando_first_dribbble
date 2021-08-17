import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/screens/food_category_screen.dart';
import 'package:Brando_first_dribbble/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: HomeScreen(),
  // ));
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kOraColor,
        fontFamily: 'Mont',
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
