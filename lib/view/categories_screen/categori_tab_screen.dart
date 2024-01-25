import 'package:community_ecommerce/routes/routes.dart';
import 'package:community_ecommerce/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/app_texts.dart';
import '../widgets/women_screen_container.dart';
import '../widgets/container_widgets.dart';

class CategoreTabScreen extends StatelessWidget {
  CategoreTabScreen({super.key});
         ///>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>categoriesHeaderText List >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
  final List categoriesHeaderText = [
    AppTexts.neww,
    AppTexts.clothes,
    AppTexts.shoes,
    AppTexts.accesories,

  ];
  ///>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>categoriesImages List >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///

  final List images = [
    AppImages.categoryNew,
    AppImages.categoryCloths,
    AppImages.categoryShoes,
    AppImages.categoryAccesories,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
         SizedBox(
          height: 20.h,
        ),
        const CustomContainers(),
         SizedBox(
          height: 10.h,
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: (){
              ///>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>womenTopScreen>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///

              Get.toNamed(RouteName.womenTopScreen);
            },
            child: ListView.builder(
                itemCount: categoriesHeaderText.length,
                itemBuilder: (context, index) {
                  return WomenScreenContainer(
                    images: images[index],
                    child: categoriesHeaderText[index],
                  );
                }),
          ),
        ),
      ],
    ));
  }
}
