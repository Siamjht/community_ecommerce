import 'package:community_ecommerce/routes/routes.dart';
import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WomenFilterScreen extends StatelessWidget {
  const WomenFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteName.womenBrandScreen);
            },
            child: Container(
              height: 58.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [

                      CustomText(
                          text:AppTexts.brand,
                          color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 25.sp,
                      )
                    ],
                  ),
                  CustomText(text: AppTexts.addIdAsOriginals,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
