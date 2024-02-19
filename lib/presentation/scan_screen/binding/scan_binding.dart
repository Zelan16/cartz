import '../controller/scan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScanScreen.
///
/// This class ensures that the ScanController is created when the
/// ScanScreen is first loaded.
class ScanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanController());
  }
}
