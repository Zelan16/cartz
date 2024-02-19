import 'package:hari_s_application3/presentation/start_screen/start_screen.dart';
import 'package:hari_s_application3/presentation/start_screen/binding/start_binding.dart';
import 'package:hari_s_application3/presentation/add_to_cart_screen/add_to_cart_screen.dart';
import 'package:hari_s_application3/presentation/add_to_cart_screen/binding/add_to_cart_binding.dart';
import 'package:hari_s_application3/presentation/scan_screen/scan_screen.dart';
import 'package:hari_s_application3/presentation/scan_screen/binding/scan_binding.dart';
import 'package:hari_s_application3/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:hari_s_application3/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:hari_s_application3/presentation/registration_successful_screen/registration_successful_screen.dart';
import 'package:hari_s_application3/presentation/registration_successful_screen/binding/registration_successful_binding.dart';
import 'package:hari_s_application3/presentation/login_screen/login_screen.dart';
import 'package:hari_s_application3/presentation/login_screen/binding/login_binding.dart';
import 'package:hari_s_application3/presentation/home_screen/home_screen.dart';
import 'package:hari_s_application3/presentation/home_screen/binding/home_binding.dart';
import 'package:hari_s_application3/presentation/search_tab_container_screen/search_tab_container_screen.dart';
import 'package:hari_s_application3/presentation/search_tab_container_screen/binding/search_tab_container_binding.dart';
import 'package:hari_s_application3/presentation/item_info_one_screen/item_info_one_screen.dart';
import 'package:hari_s_application3/presentation/item_info_one_screen/binding/item_info_one_binding.dart';
import 'package:hari_s_application3/presentation/item_info_screen/item_info_screen.dart';
import 'package:hari_s_application3/presentation/item_info_screen/binding/item_info_binding.dart';
import 'package:hari_s_application3/presentation/flash_screen/flash_screen.dart';
import 'package:hari_s_application3/presentation/flash_screen/binding/flash_binding.dart';
import 'package:hari_s_application3/presentation/spalsh_screen/spalsh_screen.dart';
import 'package:hari_s_application3/presentation/spalsh_screen/binding/spalsh_binding.dart';
import 'package:hari_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hari_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String addToCartScreen = '/add_to_cart_screen';

  static const String scanScreen = '/scan_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String registrationSuccessfulScreen =
      '/registration_successful_screen';

  static const String loginScreen = '/login_screen';

  static const String homeScreen = '/home_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String itemInfoOneScreen = '/item_info_one_screen';

  static const String itemInfoScreen = '/item_info_screen';

  static const String flashScreen = '/flash_screen';

  static const String spalshScreen = '/spalsh_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: startScreen,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    ),
    GetPage(
      name: addToCartScreen,
      page: () => AddToCartScreen(),
      bindings: [
        AddToCartBinding(),
      ],
    ),
    GetPage(
      name: scanScreen,
      page: () => ScanScreen(),
      bindings: [
        ScanBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: registrationSuccessfulScreen,
      page: () => RegistrationSuccessfulScreen(),
      bindings: [
        RegistrationSuccessfulBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: searchTabContainerScreen,
      page: () => SearchTabContainerScreen(),
      bindings: [
        SearchTabContainerBinding(),
      ],
    ),
    GetPage(
      name: itemInfoOneScreen,
      page: () => ItemInfoOneScreen(),
      bindings: [
        ItemInfoOneBinding(),
      ],
    ),
    GetPage(
      name: itemInfoScreen,
      page: () => ItemInfoScreen(),
      bindings: [
        ItemInfoBinding(),
      ],
    ),
    GetPage(
      name: flashScreen,
      page: () => FlashScreen(),
      bindings: [
        FlashBinding(),
      ],
    ),
    GetPage(
      name: spalshScreen,
      page: () => SpalshScreen(),
      bindings: [
        SpalshBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    )
  ];
}
