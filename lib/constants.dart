import 'package:Brando_first_dribbble/models/product.dart';
import 'package:flutter/material.dart';

Color kOraColor = const Color(0xffFF2600);
Color kOhliColor = const Color(0xff292631);
const kTransitionDuration = Duration(milliseconds: 500);
const kPaddingHorizontal = 20.0;
const kPaddingVertical = 10.0;
const kHeaderHeight = 100.0;
const kCartHeight = 60.0;

List<Product> products = const [
  Product(name: 'Grapefruit', image: 'images/plm.jpg', price: 22),
  Product(name: 'Fruitycake', image: 'images/food2.jpg', price: 18),
];
