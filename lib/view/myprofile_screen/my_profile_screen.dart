import 'package:community_ecommerce/routes/routes.dart';
import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/utils/images.dart';
import 'package:community_ecommerce/view/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/custom_text.dart';

class MyProfile extends StatelessWidget {
  MyProfile({super.key});

  final List myProfileHeaderText = [
    AppTexts.myOrders,
    AppTexts.shippingAddresses,
    AppTexts.paymentMethods,
    AppTexts.promoCodes,
    AppTexts.myreviews,
    AppTexts.settings,
  ];
  final List myProfileSubTileText = [
    AppTexts.already,
    AppTexts.ddRese,
    AppTexts.Visa,
    AppTexts.youHave,
    AppTexts.reviews,
    AppTexts.Notifications,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 44.h,
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Align(
                alignment: Alignment.bottomLeft,
                child:
              CustomText(
                text:AppTexts.myProfile,
                fontSize: 34.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 50,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage(AppImages.myProfile),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text:AppTexts.matildaBrown,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text:AppTexts.matildaBrownCom,
                    fontSize: 14.sp,
                  ),

                ],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: myProfileHeaderText.length,
                itemBuilder: (context, index) {
                  if(index == 0){
                    return GestureDetector(
                      onTap: (){
                        Get.toNamed(RouteName.myOrderScreen);
                      },
                      child: ListTileWidget(
                        title: myProfileHeaderText[index],
                        subtitle: myProfileSubTileText[index],
                      ),
                    );
                  }
                  else if(index == 5){
                    return GestureDetector(
                      onTap: (){
                        Get.toNamed(RouteName.myOrderSettingScreen);
                      },
                      child: ListTileWidget(
                        title: myProfileHeaderText[index],
                        subtitle: myProfileSubTileText[index],
                      ),
                    );
                  }
                  return ListTileWidget(
                    title: myProfileHeaderText[index],
                    subtitle: myProfileSubTileText[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
