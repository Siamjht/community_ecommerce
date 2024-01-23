import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class OrderCustomButton extends StatelessWidget {
  final String label;
  final String text;

  const OrderCustomButton({
    super.key,
    required this.label,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
              margin: EdgeInsets.all(10),
              width: 110.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34), color: Colors.black),
              child: Center(
                  child:
                CustomText(
                  text: label,
                  color: Colors.white,
                )
              )),
        ),
      ],
    );
  }
}
