import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/spalsh_screen/models/spalsh_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SpalshScreen.
///
/// This class manages the state of the SpalshScreen, including the
/// current spalshModelObj
class SpalshController extends GetxController {
  TextEditingController qrScannerController = TextEditingController();

  Rx<SpalshModel> spalshModelObj = SpalshModel().obs;

  @override
  void onClose() {
    super.onClose();
    qrScannerController.dispose();
  }
}
