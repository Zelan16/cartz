import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController userNameFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    userNameFieldController.dispose();
    passwordFieldController.dispose();
  }
}
