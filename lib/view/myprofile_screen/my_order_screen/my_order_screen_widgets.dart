
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_texts.dart';

class MyorderScreenWidget extends StatelessWidget {
  const MyorderScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        color: AppColors.whiteColor,
        child: Container(
          height: 164.h,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      AppTexts.order1947034,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      AppTexts.$05122019,
                      style: TextStyle(
                          fontSize: 14,color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      AppTexts.trackingNumber,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      AppTexts.iW3475453455,
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          AppTexts.quantity,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                    Expanded(
                        child: Text(
                          AppTexts.totalAmount,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                SizedBox(
                   height: 38,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 36.h,
                      width: 98.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          border:
                          Border.all(color: Colors.black)),
                      child: Center(
                          child: Text(
                            AppTexts.details,
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    Spacer(),
                    Container(
                      height: 15.h,
                      width: 77.w,
                      child: Center(
                          child: Text(
                            AppTexts.delivered,
                            style: TextStyle(
                                color: AppColors.successMarkColor,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
