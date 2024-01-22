
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_texts.dart';

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
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppTexts.sortby,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
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
                      child: Text(
                        bottomsheet[index],
                        style: TextStyle(fontSize: 16),
                      ),
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
