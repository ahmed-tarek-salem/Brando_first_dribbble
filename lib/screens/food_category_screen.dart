import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCategoryScreen extends StatelessWidget {
  final String categoryName;
  const FoodCategoryScreen(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: kOhliColor,
              child: Center(
                child: BorderedText(
                  strokeWidth: 8,
                  strokeColor: const Color(0xffFF2600),
                  child: const Text(
                    "Brando's",
                    style: TextStyle(
                      fontFamily: 'Mont',
                      fontSize: 35,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: kOhliColor,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xffF5F6FA),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(80))),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      categoryName.toUpperCase(),
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2,
                      )),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      color: kOraColor,
                      height: 3,
                      width: 55,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 15),
                        child: ListView(
                            physics: const BouncingScrollPhysics(),
                            children: const [
                              CustomCard('Grapefruit', 'images/plm.jpg', '22'),
                              CustomCard(
                                  'Fruitycake', 'images/food2.jpg', '18'),
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
