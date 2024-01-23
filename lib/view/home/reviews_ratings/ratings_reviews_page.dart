

import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/utils/dimentions.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/controller.dart';
import '../../../utils/app_texts.dart';

class RatingsReviewsPage extends StatelessWidget {
  RatingsReviewsPage({super.key});
  
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: Icon(Icons.arrow_back_ios),
     ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.h),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomText(
                text: AppTexts.ratingNReviews,
              fontSize: Dimensions.fontSizeXXXLarge,
              fontWeight: FontWeight.w700,
              color: AppColors.blackColor,
            ),
            SizedBox(height: 40.h,),
            Row(
              children: [
                Column(
                  children: [
                    CustomText(text: AppTexts.ratingRatio),
                    CustomText(text: "${controller.ratingsList[0]["totalRatings"]} ${AppTexts.ratings}"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
