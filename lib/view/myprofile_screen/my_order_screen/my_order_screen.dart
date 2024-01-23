import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_texts.dart';
import '../../widgets/my_order_custom_button.dart';
import 'my_order_screen_widgets.dart';

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
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 50.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myOrderTopText.length,
                    itemBuilder: (context, index) {
                      ///>>>>>>>>>>>>>>>>>>>>>>>>>This is a order Custom Button>>>>>>>>>>>>>>>>///
                      return OrderCustomButton(
                        label: myOrderTopText[index],
                        text: '',
                      );
                    }),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  ///>>>>>>>>>>>>>>>>>>>>>>>>>Myorder Screen All widgets>>>>>>>>>>>>>>>>///

                  return MyorderScreenWidget();
                }),
          )
        ],
      ),
    );
  }
}
