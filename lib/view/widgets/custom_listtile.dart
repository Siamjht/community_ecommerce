import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CuastomListTile extends StatelessWidget {
  final String title ;
  final String subtitle ;
  const CuastomListTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
        ),
        height: 72.h,
        width: 375.w,
        child: ListTile(
          title: Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}
