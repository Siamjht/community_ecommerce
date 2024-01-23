import 'package:community_ecommerce/routes/routes.dart';
import 'package:community_ecommerce/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_texts.dart';
import '../widgets/my_container.dart';
import '../widgets/custom_container.dart';

class CategoreTabScreen extends StatelessWidget {
  CategoreTabScreen({super.key});

  final List categoriesHeaderText = [
    AppTexts.neww,
    AppTexts.clothes,
    AppTexts.shoes,
    AppTexts.accesories,

  ];

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
        const SizedBox(
          height: 20,
        ),
        const CustomContainer(),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: (){
              Get.toNamed(RouteName.womenTopScreen);
            },
            child: ListView.builder(
                itemCount: categoriesHeaderText.length,
                itemBuilder: (context, index) {
                  return WomwnScreenWidget(
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
