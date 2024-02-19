import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/item_info_screen/models/item_info_model.dart';

/// A controller class for the ItemInfoScreen.
///
/// This class manages the state of the ItemInfoScreen, including the
/// current itemInfoModelObj
class ItemInfoController extends GetxController {
  Rx<ItemInfoModel> itemInfoModelObj = ItemInfoModel().obs;
}
