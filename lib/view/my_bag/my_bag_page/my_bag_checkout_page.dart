import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/utils/dimentions.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBagCheckOutPage extends StatelessWidget {
  const MyBagCheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: CustomText(
          text: AppTexts.checkoutAppbar,
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
            SizedBox(height: 10,),
            CustomText(text: AppTexts.shippingAddress, color: AppColors.blackColor,
              fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w400,),
            SizedBox(height: 21.h,),
            Container(
              color: AppColors.whiteColor,
              height: 108.h,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 23.0, top: 18.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomText(text: AppTexts.clientName, color: AppColors.blackColor,
                          fontSize: Dimensions.fontSizeDefault, fontWeight: FontWeight.w500,),
                        const Spacer(),
                        CustomText(text: AppTexts.change, color: AppColors.buttonsColor,
                          fontSize: Dimensions.fontSizeDefault, fontWeight: FontWeight.w500,),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        CustomText(text: "${AppTexts.clientAddress1} \n${AppTexts.clientAddress2}", color: AppColors.blackColor,
                          fontSize: Dimensions.fontSizeDefault, fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.h,),
            Row(
              children: [
                  CustomText(text: AppTexts.payment, color: AppColors.blackColor,
                    fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w400,),
                  const Spacer(),
                  CustomText(text: AppTexts.change, color: AppColors.buttonsColor,
                    fontSize: Dimensions.fontSizeDefault, fontWeight: FontWeight.w500,),
                ],
            )
          ],
        ),
      ),
    );
  }
}
