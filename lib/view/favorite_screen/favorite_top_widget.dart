import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteCustomContainer extends StatelessWidget {
  final String headerText;
  final String SubtitleText;
  final String price;

  final String images;

  // final IconData icon;

  const FavoriteCustomContainer({
    super.key,
    required this.headerText,
    required this.images,
    required this.SubtitleText,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 104.h,
                width: 104.w,
                child: Image.asset(images),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 104.h,
                width: 171.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.whiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(SubtitleText),
                      Text(headerText,
                          style: GoogleFonts.metrophobic(
                              fontSize: 18.sp, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text(price),
                          Spacer(),
                          CircleAvatar(child: Icon(Icons.favorite_border))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
