import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../../my_bag/inner/custom_container.dart';

class WomenFilterScreen extends StatefulWidget {
  const WomenFilterScreen({super.key});

  @override
  State<WomenFilterScreen> createState() => _WomenFilterScreenState();
}

class _WomenFilterScreenState extends State<WomenFilterScreen> {
  ///<<<<<<<<<<<<<<<<<<<<<<<<<This is Categorylist item >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
  final List catagoryList = [
    AppTexts.all,
    AppTexts.women,
    AppTexts.men,
    AppTexts.boys,
    AppTexts.girls
  ];
  ///<<<<<<<<<<<<<<<<<<<<<<<<<This is Sizelist item >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
  final List sizeList = [
    AppTexts.xS,
    AppTexts.s,
    AppTexts.l,
    AppTexts.m,
    AppTexts.xL,
  ];
  ///<<<<<<<<<<<<<<<<<<<<<<<<<This is RangeValue >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///

  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///<<<<<<<<<<<<<<<<<<<<<<<<<This is AppBar >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
    appBar: AppBar(
        title: Text(AppTexts.filters),
        centerTitle: true,
      ),
      ///<<<<<<<<<<<<<<<<<<<<<<<<<This is Body >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///<<<<<<<<<<<<<<<<<<<<<<<<<This is priceRange item >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: AppTexts.priceRange,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: [
                CustomText(
                    text: "\$${_currentRangeValues.start.round().toString()}"),
                Spacer(),
                CustomText(
                    text: "\$${_currentRangeValues.end.round().toString()}"),
              ],
            ),
            RangeSlider(
              min: 40,
              // onChangeStart: (value) => RangeValues(40, 100),
              activeColor: Colors.red,
              values: _currentRangeValues,
              max: 100,
              // divisions: 5,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                  print(_currentRangeValues);
                });
              },
            ),
            ///<<<<<<<<<<<<<<<<<<<<<<<<<This is Colors item >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  text: AppTexts.colors,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ///<<<<<<<<<<<<<<<<<<<<<<<<<>This is Sizes item <>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: AppTexts.sizes,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            ///<<<<<<<<<<<<<<<<<<<<<<<<<This is SizeGridview item >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
            Expanded(
              flex: 1,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sizeList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return CustomContainer(
                      containerHeight: 20,
                      containerWidth: 100,
                      borderRadius: 10,
                      imagePath: '',
                      isImage: false,
                      text: sizeList[index],
                      isText: true,
                      textColor: Colors.black,
                      containerColor: Colors.red,
                    );
                  }),
            ),
            ///<<<<<<<<<<<<<<<<<<<<<<<<<This is Category item >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>///
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: AppTexts.categories,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            ///<<<<<<<<<<<<<<<<<<<<<<<<<This is CategoryGriedview item >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..///

            Expanded(
              flex: 2,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catagoryList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return CustomContainer(
                      containerHeight: 20,
                      containerWidth: 100,
                      borderRadius: 10,
                      imagePath: '',
                      isImage: false,
                      text: catagoryList[index],
                      isText: true,
                      textColor: Colors.black,
                      containerColor: Colors.red,
                    );
                  }),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  ///<<<<<<<<<<<<<<<<<<<<<<<<<This is brand Cilik and open WomenBrandScreen class item >>>>>>>>>>>>>>>>>>>>>///
                  Get.toNamed(RouteName.womenBrandScreen);
                },
                child: SizedBox(
                  height: 58.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomText(
                            text: AppTexts.brand,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 25.sp,
                          ),
                        ],
                      ),
                      CustomText(
                        text: AppTexts.addIdAsOriginals,
                      ),
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
