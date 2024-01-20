
import 'package:get/get.dart';

import '../view/auth/forgot_password_page/forgot_password.dart';
import '../view/auth/login_page/login_page.dart';
import '../view/auth/signup_page/signup_page.dart';


class RouteName {
  static const String signUpPage = '/signUpPage';
  static const String loginPage = '/loginPage';
  static const String forgotPassword = '/forgotPassword';
  static const String homePage = '/homePage';

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
    ),
      ];
}
