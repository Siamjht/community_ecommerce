import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/view/my_bag/inner/custom_container.dart';
import 'package:community_ecommerce/view/widgets/custom_elevated_button.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:community_ecommerce/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/controller.dart';

class WomenBrandScreen extends StatelessWidget {
  WomenBrandScreen({super.key});

  final List BrandList = [
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
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Brand"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                // width: 400,
                //   height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40), color: Colors.white),
                  child:  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: AppTexts.search,
                      prefixIcon: Icon(Icons.search),

                    ),
                  )
              ),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  itemCount: BrandList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(11),
                            child: Row(
                              children: [
                                CustomText(
                                  text: BrandList[index],
                                  fontSize: 16.sp,
                                ),
                                Spacer(),
                                Checkbox(
                                  activeColor: Colors.red,
                                  value: true,
                                  onChanged: (bool? value) {},
                                )
                              ],
                            ))
                      ],
                    );
                    ;
                  }),
            ),
           Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Container(
                   height: 40,
                   width: 190,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     color: Colors.grey
                   ),
                   child: Center(child: Text(AppTexts.discard)),
                 ),
                 SizedBox(
                   width: 25,
                 ),
                 CustomElevatedButton(
                     onPressed: (){},
                     buttonHeight: 40,
                     buttonWidth: 150,
                     titleText: AppTexts.apply)
               ],
             ),
           )
          ],
        ));
  }
}
