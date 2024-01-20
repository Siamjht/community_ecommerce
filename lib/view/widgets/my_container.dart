import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyContainer extends StatelessWidget {
  final String child ;
  final String images;
  const MyContainer({super.key, required this.child, required this.images});

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
                    height: 100,
                    width: 171,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.whiteColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text(child,style: GoogleFonts.metrophobic(fontSize: 18,fontWeight: FontWeight.bold)),

                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    height: 100,
                    width: 171,

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
