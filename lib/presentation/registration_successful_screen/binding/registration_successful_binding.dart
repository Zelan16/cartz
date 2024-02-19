import '../controller/registration_successful_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationSuccessfulScreen.
///
/// This class ensures that the RegistrationSuccessfulController is created when the
/// RegistrationSuccessfulScreen is first loaded.
class RegistrationSuccessfulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationSuccessfulController());
  }
}
