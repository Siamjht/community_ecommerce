
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_texts.dart';
import '../../../utils/dimentions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: CustomText(text: AppTexts.login, color: Colors.black, fontSize: Dimensions.fontSizeXXXLarge.w, fontWeight: FontWeight.w700,),
            ),
            SizedBox(height: 73.h,),
            CustomTextField(labelText: AppTexts.email),
            SizedBox(height: 8.h,),
            CustomTextField(labelText: AppTexts.password),
            SizedBox(height: 16.h,),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(text: AppTexts.forgetYourPassword, fontSize: 14, fontWeight: FontWeight.w500),
                  Icon(Icons.arrow_right_alt_sharp, color: AppColors.buttonsColor,),
                ],
              ),
            ),
            SizedBox(height: 28.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomElevatedButton(onPressed: (){}, titleText: AppTexts.login.toUpperCase(), titleSize: 14, titleWeight: FontWeight.w500, buttonWidth: 343.w,),
            ),
            SizedBox(height: 194.h,),
            Align(
                alignment: Alignment.center,
                child: CustomText(text: AppTexts.loginWithSocialAccount, fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xFF222222),)),
            SizedBox(height: 32.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.googleIcon),
                SizedBox(width: 86.w,),
                SvgPicture.asset(AppIcons.facebookIcon, height: 24.h, width: 24.w,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
