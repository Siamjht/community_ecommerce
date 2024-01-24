import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WomenBrandScreen extends StatelessWidget {
   WomenBrandScreen({super.key});




       final List BrandList =[
         AppTexts.adidas,
         AppTexts.adidasOriginals,
         AppTexts.blend,
         AppTexts.boutiqueMoschino,
         AppTexts.champion,
         AppTexts.diesel,
         AppTexts.jackJones,
         AppTexts.nafNaf,
         AppTexts.redValentino,
         AppTexts.oliver
       ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("Brand"),centerTitle: true,),
      body: ListView.builder(
        itemCount: BrandList.length,
          itemBuilder: (context,index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.all(11),
              child: Row(
                children: [
                  CustomText(
                    text: BrandList[index],
                    fontSize: 16.sp,
                  ),
                   Spacer(),

                Checkbox(
                  activeColor: Colors.red,
                  value: true, onChanged: (bool? value) {  },


                )
                ],
              )
            )
          ],
        );
          ;
      })
    );
  }
}
