import '../controller/item_info_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ItemInfoOneScreen.
///
/// This class ensures that the ItemInfoOneController is created when the
/// ItemInfoOneScreen is first loaded.
class ItemInfoOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemInfoOneController());
  }
}
