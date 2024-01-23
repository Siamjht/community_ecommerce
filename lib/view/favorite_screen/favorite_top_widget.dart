import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteTopWidget extends StatelessWidget {
  final String headerText;
  final String subtitleText;
  final String price;

  final String images;
  FavoriteTopWidget({
    super.key,
    required this.headerText,
    required this.images,
    required this.subtitleText,
    required this.price,
  });

  bool isFavIconTapped = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Container(
        width: 343.w,
        height: 104.h,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 25,
              offset: Offset(0, 1),
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 119.w,
              height: 157.h,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topLeft: Radius.circular(8))),
                image: DecorationImage(
                  image: AssetImage(images),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: headerText,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: subtitleText,
                  ),
                  CustomText(
                    text: price,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      bottom: -10,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          isFavIconTapped = !isFavIconTapped;
                        },
                        child: CircleAvatar(
                            backgroundColor: AppColors.whiteColor,
                            radius: 20,
                            child: isFavIconTapped
                                ? Icon(
                                    Icons.favorite_sharp,
                                    color: AppColors.errorMarkColor,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    color: AppColors.grayColor,
                                  )),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
