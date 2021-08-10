import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String foodName;
  final String urlImage;
  final String price;

  const CustomCard(this.foodName, this.urlImage, this.price);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image(
              image: AssetImage(urlImage),
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
                foodName,
                style: GoogleFonts.monda(
                    textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -.5,
                )),
              ),
              Text('\$$price',
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
    );
  }
}
