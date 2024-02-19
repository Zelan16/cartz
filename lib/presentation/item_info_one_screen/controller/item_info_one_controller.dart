import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/item_info_one_screen/models/item_info_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ItemInfoOneScreen.
///
/// This class manages the state of the ItemInfoOneScreen, including the
/// current itemInfoOneModelObj
class ItemInfoOneController extends GetxController {
  TextEditingController currencyNairaNGNController = TextEditingController();

  Rx<ItemInfoOneModel> itemInfoOneModelObj = ItemInfoOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    currencyNairaNGNController.dispose();
  }
}
