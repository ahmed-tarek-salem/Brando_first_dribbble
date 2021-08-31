import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/models/product.dart';
import 'package:flutter/material.dart';

class ItemInLongCartBar extends StatelessWidget {
  final Product product;
  const ItemInLongCartBar(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(product.image),
            radius: 20,
          ),
          title: Text(
            product.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          trailing: Text(
            "\$${product.price}",
            style: TextStyle(color: kOraColor),
          ),
        )
        //  Row(
        //   children: [
        //     CircleAvatar(
        //       backgroundImage: AssetImage(product.image),
        //       radius: 20,
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(left: 20),
        //       child: Text(
        //         product.name,
        //         style: const TextStyle(
        //           color: Colors.white,
        //           fontSize: 20,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
