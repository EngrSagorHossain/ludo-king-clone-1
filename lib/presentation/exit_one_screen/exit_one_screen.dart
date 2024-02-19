import 'controller/exit_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class ExitOneScreen extends GetWidget<ExitOneController> {
  const ExitOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: SizeUtils.height,
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 208.v),
                child: Stack(
                    alignment: Alignment.topCenter,
                    children: [_buildOneStack(), _buildExitOneColumn()]))));
  }

  /// Section Widget
  Widget _buildOneStack() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 360.adaptSize,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.img360F494282200,
                  height: 360.adaptSize,
                  width: 360.adaptSize,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 48.h, right: 42.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_4645457".tr,
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 320.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text("lbl_5775457".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildExitOneColumn() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 89.v),
            padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 10.v),
            decoration: AppDecoration.outlinePrimary,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 70.h),
                      child: Text("lbl_quit_game".tr,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 67.v),
                  Padding(
                      padding: EdgeInsets.only(right: 5.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomOutlinedButton(
                                height: 28.v,
                                width: 55.h,
                                text: "lbl_yes".tr,
                                buttonTextStyle: theme.textTheme.titleSmall!),
                            Container(
                                height: 28.v,
                                width: 34.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7.h, vertical: 2.v),
                                decoration: AppDecoration.outlinePrimary11
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgVolume2,
                                    height: 17.v,
                                    width: 15.h,
                                    alignment: Alignment.bottomRight)),
                            Container(
                                height: 28.v,
                                width: 34.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7.h, vertical: 4.v),
                                decoration: AppDecoration.outlinePrimary11
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMusicalNoteSymbol,
                                    height: 15.adaptSize,
                                    width: 15.adaptSize,
                                    alignment: Alignment.topLeft)),
                            CustomOutlinedButton(
                                height: 28.v,
                                width: 55.h,
                                text: "lbl_no".tr,
                                buttonTextStyle: theme.textTheme.titleSmall!,
                                onPressed: () {
                                  onTapNo();
                                })
                          ])),
                  SizedBox(height: 28.v)
                ])));
  }

  /// Navigates to the tournamentGameScreen when the action is triggered.
  onTapNo() {
    Get.toNamed(
      AppRoutes.tournamentGameScreen,
    );
  }
}
