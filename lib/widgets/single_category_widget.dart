import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/screens/food_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleCategoryWidget extends StatelessWidget {
  final String title;
  final String number;

  SingleCategoryWidget(this.title, this.number);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return FoodCategoryScreen(title);
            },
          ),
        );
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Mont',
                      fontSize: 15),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: kOraColor,
                        borderRadius: BorderRadius.circular(13)),
                    child: Center(
                      child: Text(
                        number,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                    color: kOhliColor,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 1,
            width: double.infinity,
            color: kOhliColor.withOpacity(.2),
          ),
          const SizedBox(height: 15)
        ],
      ),
    );
  }
}
