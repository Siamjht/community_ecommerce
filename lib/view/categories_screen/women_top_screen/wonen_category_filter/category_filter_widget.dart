
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../my_bag/inner/custom_container.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({
    super.key,
    required this.cateGoryList,
  });

  final List cateGoryList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GestureDetector(
        onTap: (){

        },
        child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cateGoryList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 10,
                mainAxisExtent: 100
            ),
            itemBuilder: (context, index) {
              return CustomContainer(
                containerHeight: 20.h,
                containerWidth: 100.w,
                borderRadius: 10.w,
                imagePath: '',
                isImage: false,
                text: cateGoryList[index],
                isText: true,
                textColor:AppColors.whiteColor,
                containerColor: AppColors.errorMarkColor,
              );
            }),
      ),
    );
  }
}