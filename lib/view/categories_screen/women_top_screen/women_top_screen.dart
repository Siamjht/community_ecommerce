import 'package:community_ecommerce/utils/app_icons.dart';
import 'package:community_ecommerce/view/categories_screen/women_top_screen/women_top_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';
import '../../../utils/app_texts.dart';
import '../../../utils/images.dart';
import '../../widgets/my_container.dart';
import 'women_top_bottomshet_widget.dart';

class WomenTopScreen extends StatelessWidget {
  WomenTopScreen({super.key});

  final List womenCartItems = [
    [
      AppTexts.pullover,
      AppTexts.mango,
      AppTexts.fiftyOne,
      AppImages.pullovers,
    ],
    [
      AppTexts.blouse,
      AppTexts.dorothyPerkins,
      AppTexts.thirtyFor,
      AppImages.wblOus,
    ],
    [
      AppTexts.tShirts,
      AppTexts.lOSTInk,
      AppTexts.twelve,
      AppImages.tShirt,
    ],
    [
      AppTexts.shirt,
      AppTexts.topShop,
      AppTexts.twelve,
      AppImages.wshirts,
    ]
  ];

  final List<String> filters = const [
    AppTexts.tShirts,
    AppTexts.cropTops,
    AppTexts.sleeveless,
    AppTexts.apply
  ];
  final List<String> bottomsheet = const [
    AppTexts.popular,
    AppTexts.newest,
    AppTexts.customerReview,
    AppTexts.priceLowestToHigh,
    AppTexts.priceHighestLow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(AppTexts.womenTops,
                      style: GoogleFonts.metrophobic(
                          fontSize: 34.sp, fontWeight: FontWeight.bold)),
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: filters.length,
                    itemBuilder: (context, index) {
                      final filter = filters[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          backgroundColor: Colors.black,
                          label: Text(
                            filter,
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(RouteName.filterScreen);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.womenFilter,
                        ),
                        Text(AppTexts.filters),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                        WomenBottomShet(bottomsheet: bottomsheet),
                      );
                      // Get.toNamed(RouteName.womenLowestTo);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.womenPriceLowToHigh,
                        ),
                        Text(AppTexts.priceLowestToHigh)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            AppIcons.womenGriedIcon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                flex: 5,
                child: ListView.builder(
                    itemCount: womenCartItems.length,
                    itemBuilder: (context, index) {
                      return WomenTopWidget(
                        headerText: womenCartItems[index][0],
                        images: womenCartItems[index][3],
                        subtitleText: womenCartItems[index][1],
                        price: womenCartItems[index][2],
                      );
                    }),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
