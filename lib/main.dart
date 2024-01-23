
import 'package:community_ecommerce/themes/light_themes.dart';
import 'package:community_ecommerce/view/favorite_screen/favorite_screen.dart';
import 'package:community_ecommerce/view/categories_screen/women_top_screen/women_top_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'routes/routes.dart';
import 'view/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: light,
          home:  BottomNavBar(),
          getPages: AppRoutes.appRoutes(),

        );
      },
    );
  }
}
