import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class WomenTopWidget extends StatelessWidget {
  final String headerText;
  final String subtitleText;
  final String price;

  final String images;

  // final IconData icon;

  WomenTopWidget({
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
        width: 343,
        height: 104,
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
              width: 119,
              height: 157,
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
                  Text(headerText,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(subtitleText),
                  Text(price),


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
                        onTap: (){
                          isFavIconTapped = !isFavIconTapped;
                        },
                        child: CircleAvatar(
                          backgroundColor: AppColors.whiteColor,
                          radius: 20,
                            child: isFavIconTapped?
                            Icon(Icons.favorite_sharp, color: AppColors.errorMarkColor,)
                                :Icon(Icons.favorite_border, color: AppColors.grayColor,) ),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // child: Card(
      //   child: Row(
      //     children: [
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           height: 104.h,
      //           width: 104.w,
      //           child: Image.asset(images, fit: BoxFit.cover,),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 3,
      //         child: Container(
      //           height: 104.h,
      //           width: 171.w,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(8.0),
      //             color: AppColors.whiteColor,
      //           ),
      //           child: Padding(
      //             padding: const EdgeInsets.all(11),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(headerText,
      //                     style: GoogleFonts.metrophobic(
      //                         fontSize: 18.sp, fontWeight: FontWeight.bold)),
      //                 Text(SubtitleText),
      //                 Text(price),
      //                 Spacer(),
      //                 CircleAvatar(child: Icon(Icons.favorite_border))
      //               ],
      //             ),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
