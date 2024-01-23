import 'package:community_ecommerce/utils/app_icons.dart';
import 'package:community_ecommerce/view/categories_screen/women_top_screen/women_top_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/app_texts.dart';
import '../../../utils/images.dart';
import '../widgets/custom_text.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  final List womenCartItems = [
    [
      AppTexts.lIME,
      AppTexts.shirt,
      AppTexts.thirtyFor,
      AppImages.favoriteShirt,
    ],
    [
      AppTexts.mango,
      AppTexts.longsLeeveVioleta,
      AppTexts.fortySix,
      AppImages.favoriteLongs,
    ],
    [
      AppTexts.tShirts,
      AppTexts.lOSTInk,
      AppTexts.thirtyNine,
      AppImages.favoritetshirt,
    ],
    [
      AppTexts.shirt,
      AppTexts.berries,
      AppTexts.twelve,
      AppImages.wshirts,
    ]
  ];

  final List<String> filters = const [
    AppTexts.summer,
    AppTexts.tShirts,
    AppTexts.shirt,
    AppTexts.apply
  ];
  final List<String> bottomSheet = const [
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
         SizedBox(
          height: 20.h,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      ///>>>>>>>>>>>>>>>>>>>Googlefont Use>>>>>>>>>>>>>>>>>///
                  Text(AppTexts.favorites,
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
                          label:
                          CustomText(
                            text: filter,

                            color: Colors.white,

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
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.womenFilter,
                      ),
                      CustomText(text: AppTexts.filters,),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.womenPriceLowToHigh,
                      ),
                      CustomText( text: AppTexts.priceLowestToHigh,)
                    ],
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
                flex: 9,
                child: ListView.builder(
                    itemCount: womenCartItems.length,
                    itemBuilder: (context, index) {
                      return WomenTopWidget(
                        headerText: womenCartItems[index][1],
                        images: womenCartItems[index][3],
                        subtitleText: womenCartItems[index][0],
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
