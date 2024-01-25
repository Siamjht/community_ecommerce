import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../routes/routes.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_texts.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/my_order_custom_button.dart';
import '../my_order_details.dart';

class MyOrderScreen extends StatelessWidget {
  MyOrderScreen({super.key});

  ///<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><This Is MyScreenOrder AllList Item>>>>>>>>>>>>>>>>>>>>>>>>>>>///
  final List myOrderTopText = [
    AppTexts.delivered,
    AppTexts.processing,
    AppTexts.cancelled,
  ];
  final List myOrderTexNumber = [
    AppTexts.order1947034,
    AppTexts.order1947034,
    AppTexts.order1947034,
  ];
  final List myOrderDate = [
    AppTexts.$05122019,
    AppTexts.$05122019,
    AppTexts.$05122019,
  ];
  final List myOrderTracking = [
    AppTexts.trackingNumber,
    AppTexts.trackingNumber,
    AppTexts.trackingNumber,
  ];
  final List myOrderIwNumber = [
    AppTexts.iW3475453455,
    AppTexts.iW3475453455,
    AppTexts.iW3475453455,
  ];
  final List myOrderQuantity = [
    AppTexts.quantity,
    AppTexts.quantity,
    AppTexts.quantity,
  ];
  final List myOrderThree = [
    AppTexts.three,
    AppTexts.three,
    AppTexts.three,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [
        Icon(Icons.search)
      ],),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: CustomText(text: AppTexts.myOrders,
              fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 40.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myOrderTopText.length,
                      itemBuilder: (context, index) {
                        ///>>>>>>>>>>>>>>>>>>>>>>>>>This is a order Custom Button>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
                        return OrderContainer(
                          label: myOrderTopText[index],
                          text: '',
                        );
                      }),
                ),
              ),
            ),
            Expanded(flex: 6,
              child: ListView.builder(
                  itemCount: myOrderTexNumber.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Card(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.whiteColor),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        myOrderTexNumber[index],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blackColor),
                                      ),
                                      const Spacer(),
                                      Text(
                                        myOrderDate[index],
                                        style:
                                            TextStyle(fontSize: 14, color:AppColors.grayColor),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        myOrderTracking[index],
                                        style:
                                            TextStyle(fontSize: 14, color: AppColors.grayColor),
                                      ),
                                      Text(
                                        myOrderIwNumber[index],
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        myOrderQuantity[index],
                                        style:
                                            TextStyle(fontSize: 14, color: AppColors.grayColor),
                                      ),
                                      Text(
                                        myOrderThree[index],
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                                            context,
                                            settings: RouteSettings(name: RouteName.myOrderDetails),
                                            screen: MyOrderDetails(),
                                            withNavBar: true,
                                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(40),
                                              color: AppColors.whiteColor,
                                              border: Border.all(color: AppColors.blackColor)),
                                          child: Center(
                                            child: CustomText(
                                              text: AppTexts.details,
                                              fontSize: 14.sp,
                                              color: AppColors.blackColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      CustomText(
                                        text: AppTexts.delivered,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: AppColors.successMarkColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                    );
                  }),
            ),
          ],
        )
        );
  }
}
