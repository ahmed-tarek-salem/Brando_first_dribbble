import 'package:Brando_first_dribbble/constants.dart';
import 'package:Brando_first_dribbble/controllers/controller.dart';
import 'package:Brando_first_dribbble/widgets/cart_bar.dart';
import 'package:Brando_first_dribbble/widgets/custom_card.dart';
import 'package:Brando_first_dribbble/widgets/long_cart_bar.dart';
import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCategoryScreen extends StatelessWidget {
  final String categoryName;
  FoodCategoryScreen(this.categoryName);
  final controller = HomeController();
  void _onVerticalUpgrade(DragUpdateDetails details) {
    if (details.primaryDelta < -0.7) {
      controller.changeHomeState(HomeState.cart);
    } else if (details.primaryDelta > 12) {
      controller.changeHomeState(HomeState.normal);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Here');
    final double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: kOhliColor,
          body: AnimatedBuilder(
              animation: controller,
              builder: (context, snapshot) {
                return Stack(
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Header
                    AnimatedPositioned(
                      duration: kTransitionDuration,
                      left: 0,
                      right: 0,
                      top: controller.homeState == HomeState.normal
                          ? 0
                          : -kHeaderHeight,
                      height: kHeaderHeight,
                      child: Container(
                        color: kOhliColor,
                        child: Center(
                          child: BorderedText(
                            strokeWidth: 8,
                            strokeColor: const Color(0xffFF2600),
                            child: const Text(
                              "Brando's",
                              style: TextStyle(
                                fontFamily: 'Mont',
                                fontSize: 35,
                                fontWeight: FontWeight.w100,
                                letterSpacing: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //ListView of products
                    AnimatedPositioned(
                      duration: kTransitionDuration,
                      top: controller.homeState == HomeState.normal
                          ? kHeaderHeight
                          : -(screenHeight - kCartHeight * 2 - kHeaderHeight),
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: kOhliColor,
                        ),
                        height: screenHeight - (kHeaderHeight + kCartHeight),
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Color(0xffF5F6FA),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 30),
                              Text(
                                categoryName.toUpperCase(),
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 2,
                                )),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                color: kOraColor,
                                height: 3,
                                width: 55,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 15),
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: products.length,
                                    itemBuilder: (context, index) {
                                      return CustomCard(products[index]);
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: kTransitionDuration,
                      bottom: 0,
                      right: 0,
                      left: 0,
                      height: controller.homeState == HomeState.normal
                          ? kCartHeight
                          : screenHeight - kHeaderHeight,
                      child: GestureDetector(
                        onVerticalDragUpdate: _onVerticalUpgrade,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 55.0),
                          width: double.infinity,
                          color: kOhliColor,
                          child: AnimatedSwitcher(
                              duration: kTransitionDuration,
                              child: controller.homeState == HomeState.normal
                                  ? CartBar()
                                  : const LongCartBar()),
                        ),
                      ),
                    )
                  ],
                );
              })),
    );
  }
}
