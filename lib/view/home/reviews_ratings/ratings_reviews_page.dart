

import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/utils/dimentions.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controllers/controller.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_texts.dart';
import '../../../utils/images.dart';

class RatingsReviewsPage extends StatelessWidget {
  RatingsReviewsPage({super.key});
  
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: Icon(Icons.arrow_back_ios),
     ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: CustomText(
                    text: AppTexts.ratingNReviews,
                  fontSize: Dimensions.fontSizeXXXLarge,
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: 25.h,),
              Row(
                children: [
                  Column(
                    children: [
                      CustomText(
                        text: AppTexts.ratingRatio,
                        fontSize: Dimensions.fontSizeXXXLarge,
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackColor,
                      ),
                      CustomText(
                        text: "${controller.ratingsList[0]["totalRatings"]} ${AppTexts.ratings}",
                        fontSize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grayColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          for(int indexI = controller.ratingsList.length-1; indexI > 0 ; indexI --)
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                for(int indexJ = indexI; indexJ > 0; indexJ --)
                                  SvgPicture.asset(AppIcons.starIconSolid),
                                Text(''),
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 4,
                    width: 100  ,
                    color: Colors.orange,
                  )

                ],
              ),
              Container(
                height: 30,
                width: double.infinity,
                child: Row(
                  children: [
                    CustomText(text: "${controller.ratingsList.length} ${AppTexts.review}"),
                    Obx(() => Checkbox(
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                      ),
                      side: BorderSide(color: AppColors.grayColor),
                      fillColor: controller.isChecked.value? MaterialStateProperty.all(AppColors.blackColor): null,
                      checkColor: Colors.white,
                      value: controller.isChecked.value,
                      onChanged: (bool? value) {
                        controller.isChecked.value = value!;
                      },
                    ),),
                    CustomText(
                      text: AppTexts.withPhoto,
                      color: AppColors.blackColor,
                      fontSize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.41,
                    )
                  ],
                ),
              ),

             ///<<<<------------------------------Reviewer Feedback-------------------->>>>
             Container(
               height: 480.h,
               width: double.infinity,
                 child: Stack(
                   children: [
                     SingleChildScrollView(
                       child: Column(
                         children: [
                           Container(
                             height: 50.h,
                             width: 50.w,
                             child: ClipOval(child: Image.asset(AppImages.eveningDress, fit: BoxFit.fill,)),
                           ),

                           CustomText(text: AppTexts.reviewer),
                           Row(
                             children: [
                               for(int index = 1; index <=5 ; index++)
                                 index == 5? SvgPicture.asset(AppIcons.starOutline): SvgPicture.asset(AppIcons.starIconSolid,),
                               CustomText(text: AppTexts.orderDate),
                             ],
                           ),
                           CustomText(text: AppTexts.reviewDescription, fontSize: Dimensions.fontSizeDefault,),
                           Row(
                             children: [
                               CustomText(text: AppTexts.helpful),
                               Icon(Icons.thumb_up_sharp)
                             ],
                           ),

                           SizedBox(height: 20,),

                           Container(
                             height: 50.h,
                             width: 50.w,
                             child: ClipOval(child: Image.asset(AppImages.eveningDress, fit: BoxFit.fill,)),
                           ),

                           CustomText(text: AppTexts.reviewer),
                           Row(
                             children: [
                               for(int index = 1; index <=5 ; index++)
                                 index == 5? SvgPicture.asset(AppIcons.starOutline): SvgPicture.asset(AppIcons.starIconSolid,),
                               CustomText(text: AppTexts.orderDate),
                             ],
                           ),
                           CustomText(text: AppTexts.reviewDescription, fontSize: Dimensions.fontSizeDefault,),
                           Row(
                             children: [
                               CustomText(text: AppTexts.helpful),
                               Icon(Icons.thumb_up_sharp)
                             ],
                           ),
                         ],
                       ),
                     ),
                     Positioned(
                       bottom: 0,
                         child: Container(
                           width: double.infinity,
                           height: 150.h,
                           decoration: BoxDecoration(
                             gradient: LinearGradient(
                               begin: Alignment(0.00, -3.00),
                               end: Alignment(0, 1),
                               colors: [AppColors.pagesColor.withOpacity(0.3), AppColors.pagesColor],
                             ),
                           ),
                         ),
                     ),
                     Positioned(
                       right: 15,
                       bottom: 10,
                         child: Container(
                           width: 135.h,
                           height: 36.w,
                           decoration: ShapeDecoration(
                             color: AppColors.buttonsColor,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(25.w),
                             ),
                             shadows: [
                               BoxShadow(
                                 color: AppColors.shadowColor,
                                 blurRadius: 5.w,
                                 offset: Offset(0, 4.w),
                               )
                             ],
                           ),
                           child: Row(
                             children: [
                               Icon(Icons.edit, color: AppColors.whiteColor,),
                               SizedBox(width: 3.w,),
                               CustomText(
                                 text: AppTexts.reviewBtn,
                                 color: AppColors.whiteColor,
                                 fontSize: Dimensions.fontSizeSmall,
                                 fontWeight: FontWeight.w600,
                               ),
                             ],
                           ),
                         )
                     ),
                   ],
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
