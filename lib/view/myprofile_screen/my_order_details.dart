
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_icons.dart';
import '../../utils/app_texts.dart';
import '../../utils/dimentions.dart';
import '../widgets/custom_text.dart';

class MyOrderDetails extends StatelessWidget {
  const MyOrderDetails({super.key});

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
          actions: [
            SvgPicture.asset(AppIcons.searchIcon),
            SizedBox(
              width: 11.w,
            )
          ],
        ),
    );
  }
}
