import 'package:community_ecommerce/utils/images.dart';
import 'package:flutter/material.dart';

import '../utils/app_texts.dart';
import 'widgets/my_container.dart';
import 'widgets/custom_container.dart';

class WomenScreen extends StatelessWidget {
  WomenScreen({super.key});

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
          child: ListView.builder(
              itemCount: categoriesHeaderText.length,
              itemBuilder: (context, index) {
                return MyContainer(
                  images: images[index],
                  child: categoriesHeaderText[index],
                );
              }),
        ),
      ],
    ));
  }
}
