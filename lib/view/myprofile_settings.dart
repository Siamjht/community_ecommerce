import 'package:community_ecommerce/routes/routes.dart';
import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/utils/images.dart';
import 'package:community_ecommerce/view/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyProfileSetings extends StatelessWidget {
  MyProfileSetings({super.key});

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
            height: 44,
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  AppTexts.myProfile,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                )),
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
                children: [
                  Text(
                    AppTexts.matildaBrown,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    AppTexts.matildaBrownCom,
                    style: TextStyle(fontSize: 14),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: myProfileHeaderText.length,
                itemBuilder: (context, index) {
                  return CuastomListTile(
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
