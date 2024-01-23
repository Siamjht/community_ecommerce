import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/utils/images.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
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
                  Text(subtitleText),
                  CustomText(
                      text: headerText,
                  fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),

                  CustomText( text: 'price',),


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
                          backgroundColor: AppColors.favoritePositionIconColor,
                          radius: 20,
                            child: isFavIconTapped?
                            Icon(Icons.shopping_bag, color: AppColors.whiteColor,)
                                :Icon(Icons.favorite_border, color: AppColors.errorMarkColor,) ),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
