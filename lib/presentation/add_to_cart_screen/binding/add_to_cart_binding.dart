import '../controller/add_to_cart_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddToCartScreen.
///
/// This class ensures that the AddToCartController is created when the
/// AddToCartScreen is first loaded.
class AddToCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddToCartController());
  }
}
