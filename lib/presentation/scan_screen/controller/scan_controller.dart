import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/scan_screen/models/scan_model.dart';

/// A controller class for the ScanScreen.
///
/// This class manages the state of the ScanScreen, including the
/// current scanModelObj
class ScanController extends GetxController {
  Rx<ScanModel> scanModelObj = ScanModel().obs;
}
