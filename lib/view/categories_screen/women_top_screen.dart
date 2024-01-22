import 'package:community_ecommerce/view/categories_screen/women_top_custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_texts.dart';
import '../../utils/images.dart';
import '../widgets/my_container.dart';

class WomenTopScreen extends StatelessWidget {
   WomenTopScreen({super.key});

  final List womenHeaderText = [
    AppTexts.pullover,
    AppTexts.blouse,
    AppTexts.tShirts,
    AppTexts.shirt,

  ];
  final List womenSubtitleText = [
    AppTexts.mango,
    AppTexts.dorothyPerkins,
    AppTexts.lOSTInk,
    AppTexts.topShop,

  ];
  final List womenPriceText = [
    AppTexts.fiftyOne,
    AppTexts.thirtyFor,
    AppTexts.twelve,
    AppTexts.fiftyOne,

  ];

  final List images = [
    AppImages.pullovers,
    AppImages.wblOus,
    AppImages.wshirt,
    AppImages.wshirts,
  ];

   final List<String> filters = const [AppTexts.tShirts,AppTexts.cropTops,AppTexts.sleeveless,AppTexts.apply];
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(AppTexts.womenTops,style: GoogleFonts.metrophobic(fontSize: 34.sp,fontWeight: FontWeight.bold)),
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.add),
                          Text(AppTexts.filters),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.add),

                          Text(AppTexts.priceLowestToHigh)
                        ],
                        )  ,                    Row(
                        children: [
                          Icon(Icons.add),

                          Text(AppTexts.priceLowestToHigh)
                        ],
                        ),
                    ],
                  ),
                  Expanded(
                    flex: 5,
                    child: ListView.builder(
                        itemCount: womenHeaderText.length,
                        itemBuilder: (context, index) {
                          return WomenCustomContainer(
                            headerText: womenHeaderText[index],
                            images: images[index], SubtitleText: womenSubtitleText[index], price: womenPriceText[index],

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
