import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/start_screen/models/start_model.dart';

/// A controller class for the StartScreen.
///
/// This class manages the state of the StartScreen, including the
/// current startModelObj
class StartController extends GetxController {
  Rx<StartModel> startModelObj = StartModel().obs;
}
