
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controllers/controller.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_texts.dart';

class PromoCodeTextField extends StatelessWidget {
  PromoCodeTextField({
    super.key,
    required this.controller,
    required this.textFieldPadding,
    required this.onTap,
  });

  final Controller controller;
  final double textFieldPadding;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: textFieldPadding),
      child: Container(
        width: 340.w,
        height: 36.h,
        decoration: ShapeDecoration(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: AppColors.whiteColor,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextField(
                controller: controller.promoCodeController,
                onTap: (){},
                decoration: InputDecoration(
                    hintText: AppTexts.enterPromoCode,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 8.0, top: 12),
            //   child: CustomText(text: AppTexts.enterPromoCode, fontSize: Dimensions.fontSizeSmall, color: AppColors.grayColor, fontWeight: FontWeight.w500,),
            // ),
            Positioned(
              right: -5,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: ShapeDecoration(
                      color: AppColors.blackColor, shape: const CircleBorder()),
                  child: Icon(
                    Icons.arrow_forward,
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
