import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/search_page/models/search_model.dart';

/// A controller class for the SearchPage.
///
/// This class manages the state of the SearchPage, including the
/// current searchModelObj
class SearchController extends GetxController {
  SearchController(this.searchModelObj);

  Rx<SearchModel> searchModelObj;
}
