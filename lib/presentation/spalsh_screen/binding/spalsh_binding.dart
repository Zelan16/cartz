import '../controller/spalsh_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SpalshScreen.
///
/// This class ensures that the SpalshController is created when the
/// SpalshScreen is first loaded.
class SpalshBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpalshController());
  }
}
