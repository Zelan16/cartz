import '../controller/item_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ItemInfoScreen.
///
/// This class ensures that the ItemInfoController is created when the
/// ItemInfoScreen is first loaded.
class ItemInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemInfoController());
  }
}
