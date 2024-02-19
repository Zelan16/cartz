import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/add_to_cart_screen/models/add_to_cart_model.dart';

/// A controller class for the AddToCartScreen.
///
/// This class manages the state of the AddToCartScreen, including the
/// current addToCartModelObj
class AddToCartController extends GetxController {
  Rx<AddToCartModel> addToCartModelObj = AddToCartModel().obs;
}
