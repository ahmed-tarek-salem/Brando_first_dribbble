import 'package:Brando_first_dribbble/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<Product> cartItems = [];

  void addToCart(Product product) {
    if (!cartItems.contains(product)) {
      cartItems.add(product);
      update();
    }
  }

  double cartTotalPrice() {
    double total = 0;
    for (final Product item in cartItems) {
      total += item.price;
    }
    return total;
  }
}
