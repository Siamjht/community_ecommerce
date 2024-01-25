import 'package:community_ecommerce/controllers/controller.dart';
import 'package:community_ecommerce/routes/routes.dart';
import 'package:community_ecommerce/view/myprofile_screen/inner/my_order_list_view.dart';
import 'package:community_ecommerce/view/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_icons.dart';
import '../../utils/app_texts.dart';
import '../../utils/dimentions.dart';
import '../widgets/custom_text.dart';

class MyOrderDetail extends StatelessWidget {
 const MyOrderDetail({super.key});


  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());

    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          title: CustomText(
            text: AppTexts.orderDetails,
            fontSize: Dimensions.fontSizeXLarge,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor,),
          centerTitle: true,
          actions: [
            SvgPicture.asset(AppIcons.searchIcon),
            SizedBox(
              width: 11.w,
            )
          ],
        ),

      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    text: AppTexts.order1947034,
                    color: AppColors.blackColor,
                    fontSize: Dimensions.fontSizeLarge,
                    fontWeight: FontWeight.w400,
                  ),
                  const Spacer(),
                  CustomText(
                    text: AppTexts.orderDate,
                    color: AppColors.grayColor,
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  CustomText(
                    text: AppTexts.trackingNumber,
                    color: AppColors.grayColor,
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w400,
                  ),
                  CustomText(
                    text: " ${AppTexts.trackingDigits}",
                    color: AppColors.blackColor,
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w500,
                  ),
                  const Spacer(),
                  CustomText(
                    text: AppTexts.delivered,
                    color: AppColors.successMarkColor,
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              CustomText(
                text: "${controller.products.length} ${AppTexts.itemString}",
                color: AppColors.blackColor,
                fontSize: Dimensions.fontSizeDefault,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 410.h,
                  width: double.infinity,
                  child: MyOrderListView(controller: controller)),
              SizedBox(height: 20.h,),

              CustomText(
                text: AppTexts.orderInformation,
                color: AppColors.blackColor,
                fontSize: Dimensions.fontSizeDefault,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 10.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: AppTexts.shippingAddressLead,
                        color: AppColors.grayColor,
                        fontWeight: FontWeight.w400,
                        fontSize: Dimensions.fontSizeDefault,
                      ),
                      SizedBox(height: 25.h,),
                      CustomText(
                        text: AppTexts.paymentMethodLead,
                        color: AppColors.grayColor,
                        fontWeight: FontWeight.w400,
                        fontSize: Dimensions.fontSizeDefault,
                      ),
                      SizedBox(height: 8.h,),
                      CustomText(
                        text: AppTexts.deliveryMethodLead,
                        color: AppColors.grayColor,
                        fontWeight: FontWeight.w400,
                        fontSize: Dimensions.fontSizeDefault,
                      ),
                      SizedBox(height: 5.h,),
                      CustomText(
                        text: AppTexts.discountLead,
                        color: AppColors.grayColor,
                        fontWeight: FontWeight.w400,
                        fontSize: Dimensions.fontSizeDefault,
                      ),
                      SizedBox(height: 5.h,),
                      CustomText(
                        text: AppTexts.totalAmount,
                        color: AppColors.grayColor,
                        fontWeight: FontWeight.w400,
                        fontSize: Dimensions.fontSizeDefault,
                      ),
                    ],
                  ),

                  SizedBox(width: 12.w,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: AppTexts.shippingAddressTrail,
                        color: AppColors.blackColor,
                        fontSize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.masterCardIconBlkText),
                          CustomText(
                            text: AppTexts.masterCardNumber,
                            color: AppColors.blackColor,
                            fontSize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      CustomText(
                        text: AppTexts.deliveryMethodTrail,
                        color: AppColors.blackColor,
                        fontSize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 5.h,),
                      CustomText(
                        text: AppTexts.discountTrail,
                        color: AppColors.blackColor,
                        fontSize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 5.h,),
                      CustomText(
                        text: AppTexts.totalAmountTrail,
                        color: AppColors.blackColor,
                        fontSize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(height: 35.h,),

              Row(
                children: [
                  CustomElevatedButton(
                    onPressed: (){},
                    titleText: AppTexts.reorderBtn,
                    titleColor: AppColors.blackColor,
                    titleSize: Dimensions.fontSizeDefault,
                    titleWeight: FontWeight.w500,
                    buttonHeight: 36.h,
                    buttonWidth: 160.w,
                    borderColor: AppColors.buttonsColor,
                    buttonColor: AppColors.whiteColor,
                  ),
                  SizedBox(width: 20.w,),
                  CustomElevatedButton(
                    onPressed: (){
                      Get.toNamed(RouteName.ratingsReviewsPage);
                    },
                    titleText: AppTexts.leaveFeedbackBtn,
                    titleSize: Dimensions.fontSizeDefault,
                    titleWeight: FontWeight.w500,
                    buttonHeight: 36.h,
                    buttonWidth: 160.w,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
