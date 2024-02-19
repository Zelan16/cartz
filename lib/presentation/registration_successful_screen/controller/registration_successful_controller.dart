import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/registration_successful_screen/models/registration_successful_model.dart';

/// A controller class for the RegistrationSuccessfulScreen.
///
/// This class manages the state of the RegistrationSuccessfulScreen, including the
/// current registrationSuccessfulModelObj
class RegistrationSuccessfulController extends GetxController {
  Rx<RegistrationSuccessfulModel> registrationSuccessfulModelObj =
      RegistrationSuccessfulModel().obs;
}
