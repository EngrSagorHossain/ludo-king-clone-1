import 'controller/computer_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';
import 'package:ludo_king_clone/widgets/custom_radio_button.dart';

class ComputerTwoScreen extends GetWidget<ComputerTwoController> {
  const ComputerTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildAndroidLarge(),
                      SizedBox(height: 17.v),
                      _buildAndroidLarge1(),
                      SizedBox(height: 17.v),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: CustomIconButton(
                                height: 28.adaptSize,
                                width: 28.adaptSize,
                                padding: EdgeInsets.all(3.h),
                                onTap: () {
                                  onTapBtnIconButton();
                                },
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFrame4))),
                        CustomOutlinedButton(
                            height: 31.v,
                            width: 94.h,
                            text: "lbl_play".tr,
                            margin: EdgeInsets.only(left: 70.h),
                            buttonTextStyle: theme.textTheme.titleLarge!,
                            onPressed: () {
                              onTapPlay();
                            })
                      ]),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("msg_select_your_color".tr,
                  style: theme.textTheme.titleMedium),
              SizedBox(height: 18.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgMapsAndFlags2,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                margin: EdgeInsets.only(right: 13.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgMapsAndFlags3,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                margin:
                                    EdgeInsets.symmetric(horizontal: 13.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgMapsAndFlags1,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                margin:
                                    EdgeInsets.symmetric(horizontal: 13.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgMapsAndFlags140x40,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                margin: EdgeInsets.only(left: 13.h)))
                      ])),
              SizedBox(height: 25.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCheck11,
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                margin:
                                    EdgeInsets.only(top: 3.v, right: 17.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCircle21,
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 17.h, top: 3.v, right: 17.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCircle31,
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 17.h, top: 3.v, right: 17.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCircle11,
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                margin:
                                    EdgeInsets.only(left: 17.h, bottom: 3.v)))
                      ])),
              SizedBox(height: 2.v)
            ]));
  }

  /// Section Widget
  Widget _buildAndroidLarge1() {
    return Container(
        width: 290.h,
        padding: EdgeInsets.symmetric(horizontal: 64.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("lbl_select_players".tr, style: theme.textTheme.titleMedium),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCheckCircle1,
                            height: 42.adaptSize,
                            width: 42.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 15.h, top: 10.v, bottom: 13.v),
                            child: Text("lbl_2_players".tr,
                                style: theme.textTheme.titleSmall))
                      ])),
              SizedBox(height: 14.v),
              Obx(() => Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 5.h),
                  child: CustomRadioButton(
                      text: "lbl_4_players".tr,
                      value: "lbl_4_players".tr,
                      groupValue: controller.radioGroup.value,
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      }))),
              SizedBox(height: 16.v)
            ]));
  }

  /// Navigates to the computerScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.computerScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapPlay() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
