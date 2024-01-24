import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:community_ecommerce/view/widgets/container_widgets.dart';
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
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTexts.filters),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                CustomText(text: "\$${_currentRangeValues.start.round().toString()}"),
                Spacer(),
                CustomText(text: "\$${_currentRangeValues.end.round().toString()}"),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: AppTexts.colors,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: AppTexts.sizes,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: AppTexts.categories,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
        CustomContainer(
          containerHeight: 40,
          containerWidth: 100,
          borderRadius: 10,
          imagePath: '',
          isImage: false,
          text: AppTexts.all,
          isText: false,
        ),
            GestureDetector(
              onTap: () {
                Get.toNamed(RouteName.womenBrandScreen);
              },
              child: Container(
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
            )
          ],
        ),
      ),
    );
  }
}
