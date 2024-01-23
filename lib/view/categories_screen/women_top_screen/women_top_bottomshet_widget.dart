
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_texts.dart';
import '../../widgets/custom_text.dart';

class WomenBottomShet extends StatelessWidget {
  const WomenBottomShet({
    super.key,
    required this.bottomsheet,
  });

  final List<String> bottomsheet;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(34),
              topRight: Radius.circular(34))),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(8.0),
            child:
            CustomText(
              text: AppTexts.sortby,
            fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            )
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              height: 300.h,
              child: ListView.builder(
                  itemCount: bottomsheet.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50.h,
                      child:
                      CustomText(
                        text: bottomsheet[index],
                      fontSize: 16.sp,
                      )
                    );
                  }),
            ),
          )
        ],
      ),
      height: 352.h,
    );
  }
}
