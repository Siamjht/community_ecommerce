
import 'package:community_ecommerce/view/categories_screen/women_lowest_to_high/women_lowest.dart';
import 'package:get/get.dart';

import '../view/auth_pages/forgot_password.dart';
import '../view/auth_pages/login_page.dart';
import '../view/auth_pages/signup_page.dart';

class RouteName {
  static const String signUpPage = '/signUpPage';
  static const String loginPage = '/loginPage';
  static const String forgotPassword = '/forgotPassword';
  static const String homePage = '/homePage';
  static const String womenLowestTo = '/womenLowestTo';

}

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.signUpPage,
          page: () => SignUpPage(),
        ),
    GetPage(
      name: RouteName.loginPage,
      page: () => LoginPage(),
    ),

    GetPage(
      name: RouteName.forgotPassword,
      page: () => ForgotPassword(),
    ),
    GetPage(
      name: RouteName.forgotPassword,
      page: () => ForgotPassword(),
    ),GetPage(
      name: RouteName.womenLowestTo,
      page: () => WomenLowest(),
    ),
      ];
}
