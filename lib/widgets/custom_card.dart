import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/models/product.dart';
import 'package:Brando_first_dribbble/screens/meal_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final Product product;
  const CustomCard(this.product);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: kTransitionDuration,
            reverseTransitionDuration: kTransitionDuration,
            pageBuilder: (context, animation, sec) {
              return MealDetailsScreen(product);
            },
          ),
        );
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Hero(
              tag: product.name,
              child: Image(
                height: 200,
                width: 300,
                image: AssetImage(product.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: GoogleFonts.monda(
                      textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -.5,
                  )),
                ),
                Text('\$${product.price}',
                    style: GoogleFonts.monda(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -.5,
                    )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
