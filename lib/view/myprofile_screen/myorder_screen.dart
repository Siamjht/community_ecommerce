import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_texts.dart';

class MyOrderScreen extends StatelessWidget {
  MyOrderScreen({super.key});

  final List myOrderTopText = [
    AppTexts.delivered,
    AppTexts.processing,
    AppTexts.cancelled,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyOrderScreen"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myOrderTopText.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30.h,
                        width: 100.w,
                        child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.blackColor,
                            ),
                            child: Text(
                              myOrderTopText[index],
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    );
                  }),
            ),
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: Card(
                      color:AppColors.whiteColor,
                      child: Container(
                        height: 164.h,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppTexts.order1947034,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              Row(
                                children: [
                                  Text(AppTexts.trackingNumber,style: TextStyle(fontSize: 16),),

                                  Text(AppTexts.iW3475453455,style: TextStyle(fontSize: 16),),
                                ],
                              ),
                              Text(AppTexts.quantity,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                            ],
                          ),
                        ),

                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
