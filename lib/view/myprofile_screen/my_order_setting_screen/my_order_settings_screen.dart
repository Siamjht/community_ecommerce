import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/controller.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';
import 'my_order_setting_change_bottom_sheet.dart';

class MyOrderSettingScreen extends StatelessWidget {
  MyOrderSettingScreen({super.key});

  Controller controller = Get.find<Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            CustomText(
              text: AppTexts.settings,
              fontSize:34 ,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: AppTexts.personalInformation,
              fontSize:16 ,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              textEditingController: controller.settingFullNameController,
              labelText: AppTexts.fullName,
              isIcon: false,
            ),
            SizedBox(
              height: 17,
            ),
            CustomTextField(
              textEditingController: controller.settingDateOfBirthController,
              labelText: AppTexts.dateofBirth,
              isIcon: false,
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                CustomText(
                  text: AppTexts.password,
                  fontSize:16 ,
                  fontWeight: FontWeight.bold,
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                          SettingChangeBottomSheet(controller: controller));
                    },
                    child:
                    CustomText(
                      text: AppTexts.change,
                      fontSize:14 ,
                    )
                )
              ],
            ),
            CustomTextField(
              textEditingController: controller.settingPassword,
              labelText: AppTexts.password,
              isIcon: false,
            ),
            SizedBox(
              height: 10,
            ),

            CustomText(
              text: AppTexts.notifications,
            fontSize:16 ,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
