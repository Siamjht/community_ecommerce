
import 'dart:ffi';

import 'package:community_ecommerce/utils/app_icons.dart';
import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/utils/images.dart';
import 'package:community_ecommerce/view/my_bag/inner/add_card_bottom_sheet.dart';
import 'package:community_ecommerce/view/my_bag/inner/custom_container.dart';
import 'package:community_ecommerce/view/my_bag/inner/promo_code_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controllers/controller.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimentions.dart';
import '../../widgets/custom_text.dart';

class PaymentMethodsPage extends StatelessWidget {
  PaymentMethodsPage({super.key});

  Controller controller = Get.find<Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: CustomText(
          text: AppTexts.paymentMethods,
          fontSize: Dimensions.fontSizeXLarge,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor,),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            CustomText(
              text: AppTexts.yourPaymentCards,
              fontSize: Dimensions.fontSizeLarge,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: 30.h,
            ),

            ///<<<--------------------Master card portion------------------>>>///

            Stack(
              children: [
                CustomContainer(
                    containerHeight: 216.h,
                    containerWidth: double.infinity,
                    containerColor: AppColors.blackColor,
                    borderRadius: 8,
                    imagePath: '',
                    isImage: false,
                    text: '',
                    isText: false,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(AppImages.circleShapeCard),
                ),
                Positioned(
                  bottom: 0,
                  left: -5,
                  child: Image.asset(AppImages.curveShapeCard),
                ),
                Positioned(
                  top: 34.h,
                    left: 24.w,
                    child: SvgPicture.asset(AppIcons.cardChipIcon),
                ),
                Positioned(
                  top: 85.h,
                    left: 24.w,
                    child: CustomText(
                      text: AppTexts.cardNumber,
                      color: AppColors.whiteColor,
                      fontSize: Dimensions.fontSizeXXLarge,
                      letterSpacing: -0.41,
                      fontWeight: FontWeight.w400,
                    ),
                ),
                Positioned(
                  top: 150.h,
                  left: 24.w,
                  child: CustomText(
                    text: AppTexts.cardHolderName,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeXXSmall,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Positioned(
                  top: 165.h,
                  left: 24.w,
                  child: CustomText(
                    text: AppTexts.clientName,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeDefault,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Positioned(
                  top: 150.h,
                  left: 175.w,
                  child: CustomText(
                    text: AppTexts.expiryDate,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeXXSmall,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Positioned(
                  top: 165.h,
                  left: 175.w,
                  child: CustomText(
                    text: AppTexts.expiryDateTime,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeDefault,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Positioned(
                  right: 25.w,
                  bottom: 35.h,
                  child: SvgPicture.asset(AppIcons.mastercardIconWhText),
                ),

              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() => Checkbox(
                  checkColor: Colors.white,
                  value: controller.isChecked.value,
                  onChanged: (bool? value) {
                    controller.isChecked.value = value!;
                  },
                ),),
                CustomText(
                    text: AppTexts.defaultPaymentMethod,
                    color: AppColors.blackColor,
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w400),
              ],
            ),
            SizedBox(height: 30.h,),

            ///<<<----------------------VISA card portion------------------>>>>///

            Stack(
              children: [
                CustomContainer(
                  containerHeight: 216.h,
                  containerWidth: double.infinity,
                  containerColor: AppColors.hintTextColor,
                  borderRadius: 8,
                  imagePath: '',
                  isImage: false,
                  text: '',
                  isText: false,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(AppImages.circleShapeCard),
                ),
                Positioned(
                  bottom: 0,
                  left: -5,
                  child: Image.asset(AppImages.curveShapeCard),
                ),
                Positioned(
                  top: 110.h,
                  left: 24.w,
                  child: SvgPicture.asset(AppIcons.cardChipIcon),
                ),
                Positioned(
                  top: 80.h,
                  left: 24.w,
                  child: CustomText(
                    text: AppTexts.cardNumber,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeXXLarge,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Positioned(
                  top: 150.h,
                  left: 24.w,
                  child: CustomText(
                    text: AppTexts.cardHolderName,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeXXSmall,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Positioned(
                  top: 165.h,
                  left: 24.w,
                  child: CustomText(
                    text: AppTexts.clientName,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeDefault,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Positioned(
                  top: 150.h,
                  left: 265.w,
                  child: CustomText(
                    text: AppTexts.expiryDate,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeXXSmall,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Positioned(
                  top: 165.h,
                  left: 266.w,
                  child: CustomText(
                    text: AppTexts.expiryDateTime,
                    color: AppColors.whiteColor,
                    fontSize: Dimensions.fontSizeDefault,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Positioned(
                  right: 25.w,
                  top: 20.h,
                  child: SvgPicture.asset(AppIcons.visaCardIcon),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() => Checkbox(
                  checkColor: Colors.white,
                  value: controller.isChecked.value,
                  onChanged: (bool? value) {
                    controller.isChecked.value = value!;
                  },
                ),),
                CustomText(
                    text: AppTexts.defaultPaymentMethod,
                    color: AppColors.blackColor,
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w400),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return AddCardBottomSheet();
                    },
                  );
                },
                child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: ShapeDecoration(
                    color: AppColors.blackColor,
                    shape: const OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: AppColors.shadowColor,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.add,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
