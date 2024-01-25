import 'package:community_ecommerce/controllers/controller.dart';
import 'package:community_ecommerce/routes/routes.dart';
import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/utils/dimentions.dart';
import 'package:community_ecommerce/view/widgets/custom_elevated_button.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/app_icons.dart';
import '../../../utils/app_texts.dart';
import '../inner/my_bag_list_view.dart';
import '../inner/promo_code_bottom_sheet.dart';
import '../inner/promo_code_text_field.dart';

class MyBagPage extends StatelessWidget {
  MyBagPage({super.key});

  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SvgPicture.asset(AppIcons.searchIcon),
          SizedBox(
            width: 11.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 14.w),
              child: CustomText(
                  text: AppTexts.myBag,
                  fontSize: 34.w,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              height: 410.h,
              width: double.infinity,
              child: MyBagListView(controller: controller),
            ),
            SizedBox(
              height: 25.h,
            ),
            PromoCodeTextField(
                textFieldPadding: 16.0,
                controller: controller,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return PromoCodeBottomSheet();
                    },
                  );
                }),
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  CustomText(
                    text: AppTexts.totalAmount,
                    color: AppColors.grayColor,
                    fontWeight: FontWeight.w500,
                    fontSize: Dimensions.fontSizeDefault,
                  ),
                  const Spacer(),
                  CustomText(
                    text: AppTexts.totalPrice,
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                  child: CustomElevatedButton(
                      onPressed: () {
                        Get.toNamed(RouteName.myBagCheckoutPage);
                      },
                      titleText: AppTexts.checkOut.toUpperCase(),
                      buttonWidth: double.infinity.w,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




