import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/nav_draweritem/models/nav_model.dart';

/// A controller class for the NavDraweritem.
///
/// This class manages the state of the NavDraweritem, including the
/// current navModelObj
class NavController extends GetxController {
  Rx<NavModel> navModelObj = NavModel().obs;
}
