import 'dart:async';
import 'dart:ui';

import 'package:Brando_first_dribbble/screens/full_menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // const duration = Duration(seconds: 5);
    // Timer(duration, () {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) {
    //         return const FullMenuScreen();
    //       },
    //     ),
    //   );
    // });

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FullMenuScreen();
              },
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/aqa22.png'), fit: BoxFit.cover),
              ),
            ),
            Container(
              color: const Color(0xff25274E).withOpacity(.7),
            ),
            Center(
              child: BorderedText(
                strokeWidth: 11,
                strokeColor: const Color(0xffFF2600),
                child: const Text(
                  "Brando's",
                  style: TextStyle(
                    fontFamily: 'Mont',
                    fontSize: 50,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 65.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Baseline(
                          baseline: 20,
                          baselineType: TextBaseline.alphabetic,
                          child: Text(
                            'paperless ',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            RotationTransition(
                              turns: const AlwaysStoppedAnimation(-5 / 360),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 5),
                                height: 30,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Baseline(
                              baseline: 23,
                              baselineType: TextBaseline.alphabetic,
                              child: Text(
                                ' me',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  color: Color(0xff181439),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            RotationTransition(
                              turns: const AlwaysStoppedAnimation(-5 / 360),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'nu',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: Color(0xff181439),
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
