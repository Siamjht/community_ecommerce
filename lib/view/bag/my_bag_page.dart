

import 'package:community_ecommerce/controllers/controller.dart';
import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/utils/dimentions.dart';
import 'package:community_ecommerce/view/widgets/custom_elevated_button.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:community_ecommerce/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/app_icons.dart';
import '../../utils/app_texts.dart';

class MyBagPage extends StatelessWidget {
  MyBagPage({super.key});
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          SvgPicture.asset(AppIcons.searchIcon),
          SizedBox(width: 11.w,)
        ],
      ),
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: CustomText(text: AppTexts.myBag, fontSize: 34.w, fontWeight: FontWeight.w700),
            ),
            Container(
              height: 410.h,
              width: double.infinity,
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index){
                  var items = controller.products[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                    child: Container(
                      height: 104.h,
                      width: double.infinity,
                      decoration: ShapeDecoration(
                          color: AppColors.whiteColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          shadows: [
                            BoxShadow(
                              color: AppColors.shadowColor,
                              blurRadius: 25,
                              offset: const Offset(0,1),
                              spreadRadius: 0
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                              child: Image.asset(items.image, fit: BoxFit.cover, height: 184.h, width: 100.w,)),
                          SizedBox(width: 14.w,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomText(text: items.name, fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w400,),
                                          Row(

                                            children: [
                                              CustomText(text: "${AppTexts.colorItem}: ", color: AppColors.grayColor,fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w400,),
                                              CustomText(text: items.color, fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w400,),
                                              SizedBox(width: 13.w,),
                                              CustomText(text: "${AppTexts.sizeItem}: ", color: AppColors.grayColor,fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w400,),
                                              CustomText(text: items.size, fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w400,),
                                            ],
                                          ),
                                          SizedBox(height: 15.h,),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.more_vert_rounded,
                                        color: AppColors.grayColor,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 24.w,
                                        height: 24.w,
                                        decoration: ShapeDecoration(
                                          color: AppColors.whiteColor,
                                          shape: const CircleBorder(),
                                          shadows: [
                                            BoxShadow(
                                              color: AppColors.shadowColor,
                                              blurRadius: 4,
                                              offset: const Offset(0, 4),
                                            )
                                          ],
                                        ),
                                        child: Icon(Icons.remove, color: AppColors.grayColor,),
                                      ),
                                      SizedBox(width: 21.w,),
                                      CustomText(text: items.quantity.toString(), fontSize: Dimensions.fontSizeDefault, color: AppColors.blackColor, fontWeight: FontWeight.w500,),
                                      SizedBox(width: 21.w,),
                                      Container(
                                        width: 24.w,
                                        height: 24.w,
                                        decoration: ShapeDecoration(
                                          color: AppColors.whiteColor,
                                          shape: const CircleBorder(),
                                          shadows: [
                                            BoxShadow(
                                              color: AppColors.shadowColor,
                                              blurRadius: 4,
                                              offset: const Offset(0, 4),
                                            )
                                          ],
                                        ),
                                        child: Icon(Icons.add, color: AppColors.grayColor,),
                                      ),
                                      Spacer(),
                                      CustomText(text: items.price, color: AppColors.blackColor, fontSize: Dimensions.fontSizeDefault, fontWeight: FontWeight.w500,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 25.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 340.w,
                height: 36.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: AppColors.whiteColor,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 12),
                      child: CustomText(text: AppTexts.enterPromoCode, fontSize: Dimensions.fontSizeSmall, color: AppColors.grayColor, fontWeight: FontWeight.w500,),
                    ),
                    Positioned(
                      right: -5,
                      child: Container(
                        height: 36.h,
                        width: 36.w,
                        decoration: ShapeDecoration(
                          color: AppColors.blackColor,
                            shape: CircleBorder()),
                        child: Icon(Icons.arrow_forward, color: AppColors.whiteColor,),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 28.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  CustomText(text: AppTexts.totalAmount, color: AppColors.grayColor, fontWeight: FontWeight.w500, fontSize: Dimensions.fontSizeDefault,),
                  const Spacer(),
                  CustomText(text: AppTexts.totalPrice, fontSize: Dimensions.fontSizeDefault, fontWeight: FontWeight.w500,)
                ],
              ),
            ),
            SizedBox(height: 26.h,),
            Center(child: CustomElevatedButton(onPressed: (){}, titleText: AppTexts.checkOut.toUpperCase(), buttonWidth: 343.w)),
          ],
        ),
      ),
    );
  }
}
