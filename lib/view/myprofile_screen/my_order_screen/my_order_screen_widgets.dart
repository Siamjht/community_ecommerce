import 'package:community_ecommerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_texts.dart';
import '../../widgets/custom_text.dart';

class MyorderScreenWidget extends StatelessWidget {
  const MyorderScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        color: AppColors.whiteColor,
        child: Container(
          height: 164.h,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: AppTexts.order1947034,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                    CustomText(
                      text: AppTexts.$05122019,
                      fontSize: 14,
                      color: AppColors.grayColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text: AppTexts.trackingNumber,
                      fontSize: 16,
                    ),
                    CustomText(
                      text: AppTexts.iW3475453455,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: AppTexts.quantity,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: CustomText(
                        text: AppTexts.totalAmount,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteName.myOrderDetails);
                      },
                      child: Container(
                        height: 36.h,
                        width: 98.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                            border: Border.all(color: Colors.black)),
                        child: Center(
                          child: CustomText(
                            text: AppTexts.details,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 15.h,
                      width: 77.w,
                      child: Center(
                        child: CustomText(
                          text: AppTexts.delivered,
                          fontWeight: FontWeight.bold,
                          color: AppColors.successMarkColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
