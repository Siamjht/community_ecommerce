
import 'package:get/get.dart';

import '../view/auth/forgot_password_page/forgot_password.dart';
import '../view/auth/login_page/login_page.dart';
import '../view/auth/signup_page/signup_page.dart';
import '../view/my_bag/my_bag_pages/add_shipping_address_page.dart';
import '../view/my_bag/my_bag_pages/my_bag_checkout_page.dart';
import '../view/my_bag/my_bag_pages/payment_methods_page.dart';
import '../view/my_bag/my_bag_pages/shipping_addresses.dart';
import '../view/my_bag/my_bag_pages/success_page.dart';


class RouteName {
  static const String signUpPage = '/signUpPage';
  static const String loginPage = '/loginPage';
  static const String forgotPassword = '/forgotPassword';
  static const String homePage = '/homePage';
  static const String myBagCheckoutPage = '/myBagCheckoutPage';
  static const String paymentMethodsPage = '/paymentMethodsPage';
  static const String shippingAddresses = '/shippingAddresses';
  static const String addShippingAddress = '/addShippingAddress';
  static const String successPage = '/successPage';

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
      name: RouteName.myBagCheckoutPage,
      page: () => MyBagCheckOutPage(),
    ),
    GetPage(
      name: RouteName.paymentMethodsPage,
      page: () => PaymentMethodsPage(),
    ),
    GetPage(
      name: RouteName.shippingAddresses,
      page: () => ShippingAddresses(),
    ),
    GetPage(
      name: RouteName.addShippingAddress,
      page: () => AddShippingAddressPage(),
    ),
    GetPage(
      name: RouteName.successPage,
      page: () => SuccessPage(),
    ),
  ];
}
