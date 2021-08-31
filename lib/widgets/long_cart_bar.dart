import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/controllers/cart_controller.dart';
import 'package:Brando_first_dribbble/widgets/item_in_long_cart_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LongCartBar extends StatelessWidget {
  const LongCartBar();

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(
      CartController(),
    );
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: kPaddingVertical),
            child: Text(
              "Cart",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        GetBuilder<CartController>(
          builder: (_) {
            return Expanded(
              child: ListView.builder(
                itemCount: cartController.cartItems.length + 1,
                itemBuilder: (context, index) {
                  final double total = cartController.cartTotalPrice();
                  if (index == cartController.cartItems.length) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: kPaddingVertical, bottom: kPaddingVertical),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: Text("Next - \$$total"),
                        ),
                      ),
                    );
                  }
                  return ItemInLongCartBar(cartController.cartItems[index]);
                },
              ),
            );
          },
        ),
        //   const SizedBox(height: kPaddingVertical),
      ],
    );
  }
}
