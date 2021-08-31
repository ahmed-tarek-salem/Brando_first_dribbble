import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/controllers/cart_controller.dart';
import 'package:Brando_first_dribbble/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MealDetailsScreen extends StatefulWidget {
  final Product product;
  const MealDetailsScreen(this.product);

  @override
  _MealDetailsScreenState createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  String _cartTag = "";
  double opacity = 0;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        opacity = 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const String decripton =
        'Slow-cooked for eight hours, this intensely flavored and juicy lamb shank, infused with fresh rosemary and sage, is a house specialty. Served with smooth mashed potatoes and char-grilled, crispy asparagus, topped with a tangy golden-brown glaze for a meal hard to forget.';
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: widget.product.name + _cartTag,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  opacity = 1;
                });
              },
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.cover,
                height: 50.0.h,
                width: double.infinity,
              ),
            ),
          ),
          Expanded(
            child: AnimatedOpacity(
              duration: kTransitionDuration,
              opacity: opacity,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 55, vertical: kPaddingVertical),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.product.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "\$${widget.product.price}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.0.h),
                      child: Text(
                        decripton,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 11.0.sp),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 8.0.h,
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
          ),
        ],
      ),
    );
  }
}
