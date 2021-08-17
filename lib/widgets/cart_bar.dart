import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/controllers/cart_controller.dart';
import 'package:Brando_first_dribbble/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(
      CartController(),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Cart',
          style: TextStyle(
            color: kOraColor,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        GetBuilder<CartController>(builder: (_) {
          return Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemCount: cartController.cartItems.length,
              itemBuilder: (context, index) {
                return CartItem(cartController.cartItems[index]);
              },
            ),
          );
        }),
        GetBuilder<CartController>(builder: (_) {
          return Text(
            cartController.cartItems.length.toString(),
            style: TextStyle(
              color: kOraColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          );
        })

        // Container(
        //   child: const Text('A'),
        // )
      ],
    );
  }
}
