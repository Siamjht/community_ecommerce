
import 'package:community_ecommerce/controllers/controller.dart';
import 'package:community_ecommerce/view/my_bag/inner/bottom_sheet_list_view.dart';
import 'package:community_ecommerce/view/my_bag/inner/promo_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_texts.dart';
import '../../../utils/dimentions.dart';
import '../../widgets/custom_text.dart';

class OpenBottomSheet extends StatelessWidget {
  OpenBottomSheet({
    super.key,
  });
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 464.h,
      decoration: ShapeDecoration(
        color: AppColors.pagesColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34),
            topRight: Radius.circular(34),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14.h,
            ),
            Center(
              child: Container(
                width: 60,
                height: 6,
                decoration: ShapeDecoration(
                  color: AppColors.hintTextColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            PromoCodeTextField(
                textFieldPadding: 0,
                controller: controller,
                onTap: (){}),
            const SizedBox(
              height: 32,
            ),
            CustomText(
              text: AppTexts.yourPromoCode,
              fontSize: Dimensions.fontSizeXLarge,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
            Expanded(
              child: BottomSheetListView(),
            )
          ],
        ),
      ),
    );
  }
}
