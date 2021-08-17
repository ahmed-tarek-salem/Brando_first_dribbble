import 'package:Brando_first_dribbble/models/product.dart';
import 'package:flutter/material.dart';

class ItemInLongCartBar extends StatelessWidget {
  final Product product;
  const ItemInLongCartBar(this.product);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(product.image),
          radius: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            product.name,
          ),
        ),
      ],
    );
  }
}
