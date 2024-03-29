
import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_texts.dart';
import '../../widgets/custom_text.dart';


class WomenBottomSheet extends StatelessWidget {
   WomenBottomSheet({
    super.key,
    required this.bottomsheet,
  });

  final List<String> bottomsheet;

  RxList selectedItemsList = [].obs;

  ///>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>_Lowest to height press and open bottom sheet>>>>>>>>>>>>>>///
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(34),
              topRight: Radius.circular(34))),
      height: 352.h,
      child: Column(
        children: [
          Padding(
            padding:  const EdgeInsets.all(8.0),
            child:
            CustomText(
              text: AppTexts.sortby,
            fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            )
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15),
              height: 300.h,
              child: ListView.builder(
                  itemCount: bottomsheet.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        if(selectedItemsList.contains(index)){
                          selectedItemsList.remove(index);
                        }
                        else{
                          selectedItemsList.add(index);
                        }
                      },
                      child: SizedBox(
                          height: 50.h,
                          child: Obx(() => CustomText(
                            text: bottomsheet[index],
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: selectedItemsList.contains(index)? AppColors.errorMarkColor : AppColors.blackColor,
                            // color:isButtonRed ? Colors.red : null,
                          ),
                          ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
