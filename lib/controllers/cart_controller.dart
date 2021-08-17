import 'package:Brando_first_dribbble/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<Product> cartItems = [];

  void addToCart(Product product) {
    cartItems.add(product);
    update();
  }
}
