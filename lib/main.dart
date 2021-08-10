import 'package:Brando_first_dribbble/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: HomeScreen(),
  // ));
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
