
import 'package:community_ecommerce/controllers/controller.dart';
import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/app_icons.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.labelText, this.height = 64});
  final String labelText;
  final double height;

  Controller textFieldController = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration:BoxDecoration(
          border: textFieldController.isValided? null : Border.all(color: AppColors.errorMarkColor),
          borderRadius: BorderRadius.circular(4),
          color: AppColors.whiteColor,
        ),
        height: height,
        width: 343.w,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TextField(
                    controller: textFieldController.nameController,
                    onTap: (){

                    },
                    decoration: InputDecoration(
                      suffixIcon: textFieldController.isValided? Icon(Icons.check, color: AppColors.successMarkColor,)
                          :  SvgPicture.asset(AppIcons.crossIcon, color:AppColors.errorMarkColor, height: 14.h,width: 14.w,),
                      labelStyle: TextStyle(
                        color: AppColors.grayColor,
                      ),
                      labelText: labelText,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(4),
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
