
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controllers/controller.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_texts.dart';
import '../../../utils/dimentions.dart';
import '../../widgets/custom_text.dart';

class MyBagListView extends StatelessWidget {
  const MyBagListView({
    super.key,
    required this.controller,
  });

  final Controller controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.products.length,
      itemBuilder: (context, index) {
        var items = controller.products[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16.0, vertical: 12),
          child: Container(
            height: 104.h,
            width: double.infinity,
            decoration: ShapeDecoration(
              color: AppColors.whiteColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              shadows: [
                BoxShadow(
                    color: AppColors.shadowColor,
                    blurRadius: 25,
                    offset: const Offset(0, 1),
                    spreadRadius: 0),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                    child: Image.asset(
                      items.image,
                      fit: BoxFit.cover,
                      height: 184.h,
                      width: 100.w,
                    )),
                SizedBox(
                  width: 14.w,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: items.name,
                                  fontSize: Dimensions.fontSizeLarge,
                                  fontWeight: FontWeight.w400,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: "${AppTexts.colorItem}: ",
                                      color: AppColors.grayColor,
                                      fontSize:
                                      Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    CustomText(
                                      text: items.color,
                                      fontSize:
                                      Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    SizedBox(
                                      width: 13.w,
                                    ),
                                    CustomText(
                                      text: "${AppTexts.sizeItem}: ",
                                      color: AppColors.grayColor,
                                      fontSize:
                                      Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    CustomText(
                                      text: items.size,
                                      fontSize:
                                      Dimensions.fontSizeLarge,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Icon(
                              Icons.more_vert_rounded,
                              color: AppColors.grayColor,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Row(
                          children: [
                            Container(
                              width: 24.w,
                              height: 24.w,
                              decoration: ShapeDecoration(
                                color: AppColors.whiteColor,
                                shape: const CircleBorder(),
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.shadowColor,
                                    blurRadius: 4,
                                    offset: const Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grayColor,
                              ),
                            ),
                            SizedBox(
                              width: 21.w,
                            ),
                            CustomText(
                              text: items.quantity.toString(),
                              fontSize: Dimensions.fontSizeDefault,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: 21.w,
                            ),
                            Container(
                              width: 24.w,
                              height: 24.w,
                              decoration: ShapeDecoration(
                                color: AppColors.whiteColor,
                                shape: const CircleBorder(),
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.shadowColor,
                                    blurRadius: 4,
                                    offset: const Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Icon(
                                Icons.add,
                                color: AppColors.grayColor,
                              ),
                            ),
                            const Spacer(),
                            CustomText(
                              text: items.price,
                              color: AppColors.blackColor,
                              fontSize: Dimensions.fontSizeDefault,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}