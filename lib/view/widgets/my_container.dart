import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WomwnScreenWidget extends StatelessWidget {
  final String child;

  final String images;

  const WomwnScreenWidget(
      {super.key, required this.child, required this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  height: 100.h,
                  width: 171.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: AppColors.whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child:
                    Text(child,
                        style: GoogleFonts.metrophobic(
                            fontSize: 18.sp, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  height: 100.h,
                  width: 171.w,
                  child: Image.asset(images),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
