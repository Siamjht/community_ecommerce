
import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/utils/dimentions.dart';
import 'package:community_ecommerce/utils/images.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controllers/controller.dart';
import '../../utils/app_icons.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(AppImages.homeImg),
                Positioned(
                  left: 18,
                  bottom: 24,
                  child: CustomText(
                    text: AppTexts.streetClothes,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeXXXLarge,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(text: AppTexts.sale, fontSize: Dimensions.fontSizeXXXLarge, fontWeight: FontWeight.w700),
                  const Spacer(),
                  CustomText(text: AppTexts.viewAll, fontSize: Dimensions.fontSizeXSmall, fontWeight: FontWeight.w400)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: CustomText(
                text: AppTexts.superSummerSale,
                fontSize: Dimensions.fontSizeXSmall,
                fontWeight: FontWeight.w400,
                color: AppColors.grayColor,
              ),
            ),
            SizedBox(height: 22.h,),
            HomeListView(controller: controller, containerColor: AppColors.errorMarkColor, containerText: "-20%", ),
            SizedBox(height: 25.h,),

            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(text: AppTexts.newProducts, fontSize: Dimensions.fontSizeXXXLarge, fontWeight: FontWeight.w700),
                  const Spacer(),
                  CustomText(text: AppTexts.viewAll, fontSize: Dimensions.fontSizeXSmall, fontWeight: FontWeight.w400)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: CustomText(
                text: AppTexts.neverBefore,
                fontSize: Dimensions.fontSizeXSmall,
                fontWeight: FontWeight.w400,
                color: AppColors.grayColor,
              ),
            ),
            SizedBox(height: 22.h,),
            HomeListView(controller: controller, containerColor: AppColors.defaultTextColor, containerText: AppTexts.newProducts,),
          ],
        ),
      ),
    );
  }
}

class HomeListView extends StatelessWidget {
  const HomeListView({
    super.key,
    required this.controller,
    required this.containerColor,
    required this.containerText,

  });

  final Controller controller;
  final Color containerColor;
  final String containerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Container(
        height: 300.h,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: controller.imagesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 220.h,
                          width: 150.w,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(controller.imagesList[index]),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          // child: Image.asset(controller.imagesList[index], fit: BoxFit.cover,),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          height: 24.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              color: containerColor,
                              borderRadius: BorderRadius.circular(29)
                          ),
                          child: Center(child: CustomText(text: containerText, fontSize: Dimensions.fontSizeXSmall, color: AppColors.whiteColor,)),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: -20,
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: const ShapeDecoration(
                                color: Colors.white,
                                shape: CircleBorder(),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x14000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child:  SvgPicture.asset(AppIcons.favoriteIcon,
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  const SizedBox(height: 4,),
                  Row(
                    children: [
                      for(int i = 5; i>0; i--)
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child: SvgPicture.asset(AppIcons.starIconSolid),
                        ),

                      CustomText(text: ' (10)', color: AppColors.grayColor, fontSize: Dimensions.fontSizeXXSmall,),
                    ],
                  ),
                  CustomText(text: AppTexts.dorothyPerkins, color: AppColors.grayColor, fontSize: Dimensions.fontSizeXSmall,),
                  CustomText(text: AppTexts.eveningDress, fontSize: Dimensions.fontSizeLarge,),
                  Row(
                    children: [
                      CustomText(text: "15\$",
                        lineThrough: TextDecoration.lineThrough ,
                        fontSize: Dimensions.fontSizeDefault,
                        color: AppColors.grayColor,
                        fontWeight: FontWeight.w500,),

                      CustomText(
                        text: " 12\$",
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.w500,
                        color: AppColors.errorMarkColor,
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
