import 'package:community_ecommerce/view/favorite_screen/favorite_top_custom_container.dart';
import 'package:community_ecommerce/view/categories_screen/women_top_custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_texts.dart';
import '../../utils/images.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});


  final List womenSubtitleText = [
    AppTexts.lIME,
    AppTexts.mango,
    AppTexts.berries,
  ];
  final List womenHeaderText = [
    AppTexts.shirt,
    AppTexts.blouse,
    AppTexts.tShirts,
  ];
  final List womenPriceText = [
    AppTexts.fiftyOne,
    AppTexts.thirtyFor,
    AppTexts.twelve,
  ];

  final List<String> filters = const [AppTexts.summer,AppTexts.tShirts,AppTexts.tShirts,AppTexts.apply];


  final List images = [
    AppImages.favoriteShirt,
    AppImages.favoriteLongs,
    AppImages.favoritetshirt,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(AppTexts.favorites,
                    style: GoogleFonts.metrophobic(
                        fontSize: 34.sp, fontWeight: FontWeight.bold)),
              ),

              Expanded(
                flex: 1,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                  itemCount: filters.length,

                    itemBuilder: (context,index){
                      final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      backgroundColor: Colors.black,
                        label: Text(filter,style: TextStyle(color: Colors.white),),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  );
                }),
              ),
              Expanded(
                flex: 5,
                child: ListView.builder(
                    itemCount: womenHeaderText.length,
                    itemBuilder: (context, index) {
                      return FavoriteCustomContainer(
                        headerText: womenHeaderText[index],
                        images: images[index],
                        SubtitleText: womenSubtitleText[index],
                        price: womenPriceText[index],
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
