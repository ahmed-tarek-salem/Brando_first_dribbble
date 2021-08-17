import 'package:Brando_first_dribbble/models/product.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final Product product;
  const CartItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Hero(
        // tag: 'Ahmed',
        tag: product.name + '_cartTag',
        child: CircleAvatar(
          backgroundImage: AssetImage(
            product.image,
          ),
          radius: 20,
        ),
      ),
    );
  }
}
