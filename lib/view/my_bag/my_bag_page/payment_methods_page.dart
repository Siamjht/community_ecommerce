
import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/view/my_bag/inner/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimentions.dart';
import '../../widgets/custom_text.dart';

class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({super.key});

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
            Stack(
              children: [
                CustomContainer(
                    containerHeight: 216.h,
                    containerWidth: double.infinity,
                    borderRadius: 8,
                    imagePath: '',
                    isImage: false,
                    text: '',
                    isText: false,

                )
              ],
            ),
            Container(
              width: 344,
              height: 216,
              decoration: ShapeDecoration(
                color: Color(0xFF222222),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                shadows: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 25,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
