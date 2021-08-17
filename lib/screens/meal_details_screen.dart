import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/controllers/cart_controller.dart';
import 'package:Brando_first_dribbble/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MealDetailsScreen extends StatefulWidget {
  final Product product;
  const MealDetailsScreen(this.product);

  @override
  _MealDetailsScreenState createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  String _cartTag = "";

  @override
  Widget build(BuildContext context) {
    const String decripton =
        'Slow-cooked for eight hours, this intensely flavored and juicy lamb shank, infused with fresh rosemary and sage, is a house specialty. Served with smooth mashed potatoes and char-grilled, crispy asparagus, topped with a tangy golden-brown glaze for a meal hard to forget.';
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: widget.product.name + _cartTag,
            child: Image.asset(
              widget.product.image,
              fit: BoxFit.cover,
              height: 400,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 55, vertical: kPaddingVertical),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$${widget.product.price}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      decripton,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        Get.put(CartController()).addToCart(widget.product);
                        setState(() {
                          _cartTag = '_cartTag';
                        });
                        Navigator.pop(context);
                      },
                      child: const Text('Add to cart'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
