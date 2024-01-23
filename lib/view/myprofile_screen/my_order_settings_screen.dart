import 'package:community_ecommerce/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controller.dart';
import '../widgets/custom_text_field.dart';

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
            Text(
              AppTexts.settings,
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              AppTexts.personalInformation,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
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
                Text(AppTexts.password,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                Spacer(),
                GestureDetector(
                    onTap: (){},
                    child: Text(AppTexts.change,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),))
              ],
            ),
            CustomTextField(
              textEditingController: controller.settingPassword,
              labelText: AppTexts.password,
              isIcon: false,
            ),
          ],
        ),
      ),
    );

  }
}
