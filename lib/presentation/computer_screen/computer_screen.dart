import 'controller/computer_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class ComputerScreen extends GetWidget<ComputerController> {
  const ComputerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 9.v),
                child: Column(children: [
                  Spacer(flex: 37),
                  _buildAndroidLargeColumn(),
                  SizedBox(height: 16.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 3.v),
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
                                text: "lbl_next".tr,
                                margin: EdgeInsets.only(left: 72.h),
                                buttonTextStyle: theme.textTheme.titleLarge!,
                                onPressed: () {
                                  onTapNext();
                                })
                          ]))),
                  Spacer(flex: 62),
                  Text("lbl_v8_0_0_263".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer10)
                ]))));
  }

  /// Section Widget
  Widget _buildAndroidLargeColumn() {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 80.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_select_game".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 23.v),
          SizedBox(
              height: 35.v,
              width: 121.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        margin: EdgeInsets.only(left: 3.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 2.v),
                        decoration: AppDecoration.outlinePrimary8.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL15),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2.v),
                              Text("lbl_classic".tr,
                                  style: CustomTextStyles.titleSmallYellow700_1)
                            ]))),
                CustomImageView(
                    imagePath: ImageConstant.imgCheckCircle1,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    alignment: Alignment.centerLeft)
              ])),
          SizedBox(height: 15.v),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 3.h),
              decoration: AppDecoration.outlinePrimary8
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCircle41,
                        height: 27.adaptSize,
                        width: 27.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(top: 5.v, bottom: 3.v),
                        child: Text("lbl_rush_mode".tr,
                            style: CustomTextStyles.titleSmallYellow700_1))
                  ])),
          SizedBox(height: 24.v)
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the computerTwoScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.computerTwoScreen,
    );
  }
}
