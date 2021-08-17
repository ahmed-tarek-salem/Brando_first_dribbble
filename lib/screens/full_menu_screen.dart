import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/widgets/single_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class FullMenuScreen extends StatelessWidget {
  FullMenuScreen();
  @override
  Widget build(BuildContext context) {
    print('Start');
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: const Color(0xff292631),
                  child: BorderedText(
                    strokeWidth: 11,
                    strokeColor: const Color(0xffFF2600),
                    child: const Text(
                      "Brando's",
                      style: TextStyle(
                        fontFamily: 'Mont',
                        fontSize: 45,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            Expanded(
              flex: 7,
              child: Container(
                  color: const Color(0xff292631),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xffF5F6FA),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(80))),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 35.0, bottom: 15),
                          child: Text(
                            'FULL MENU',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Mont',
                              fontWeight: FontWeight.w900,
                              color: Color(0xff292631),
                            ),
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 4,
                          color: const Color(0xffFF2600),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 50, top: 20, right: 50),
                            child: ListView(
                              children: [
                                SingleCategoryWidget('Starters', '7'),
                                SingleCategoryWidget('Flatbread + Pasta', '4'),
                                SingleCategoryWidget('Main Courses', '5'),
                                SingleCategoryWidget('Sweets', '4'),
                                SingleCategoryWidget('Drinks', '6'),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Baseline(
                                baseline: 20,
                                baselineType: TextBaseline.alphabetic,
                                child: Text('paperless ',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'Roboto',
                                      color: kOhliColor,
                                    )),
                              ),
                              Stack(
                                children: [
                                  RotationTransition(
                                    turns:
                                        const AlwaysStoppedAnimation(-5 / 360),
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 5),
                                      height: 30,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: kOhliColor,
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
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  RotationTransition(
                                    turns:
                                        const AlwaysStoppedAnimation(-5 / 360),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: kOhliColor,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'nu',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
