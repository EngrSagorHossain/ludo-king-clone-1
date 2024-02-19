import 'controller/pass_n_play_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class PassNPlayOneScreen extends GetWidget<PassNPlayOneController> {
  const PassNPlayOneScreen({Key? key}) : super(key: key);

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
                      SizedBox(height: 20.v),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
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
                            margin: EdgeInsets.only(left: 71.h),
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
        width: 290.h,
        padding: EdgeInsets.symmetric(horizontal: 43.h, vertical: 7.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("msg_choose_color_and".tr,
                  style: CustomTextStyles.titleSmallYellow700_1)),
          SizedBox(height: 29.v),
          _buildMapsAndFlagsOne(
              imageProps: ImageConstant.imgMapsAndFlags2,
              textProps: "lbl_player_1".tr),
          SizedBox(height: 10.v),
          _buildMapsAndFlagsOne(
              imageProps: ImageConstant.imgMapsAndFlags1,
              textProps: "lbl_player_3".tr),
          SizedBox(height: 9.v),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(right: 68.h),
                  padding: EdgeInsets.all(6.h),
                  decoration: AppDecoration.outlinePrimary3.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Text("lbl_vs".tr,
                      style: CustomTextStyles.labelLargeOnPrimaryContainer13))),
          SizedBox(height: 7.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgMapsAndFlags140x40,
                height: 20.adaptSize,
                width: 20.adaptSize),
            Container(
                height: 19.v,
                width: 87.h,
                margin: EdgeInsets.only(left: 13.h),
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 19.v,
                          width: 87.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer,
                              borderRadius: BorderRadius.circular(5.h)))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("lbl_player_2".tr,
                              style: theme.textTheme.bodySmall)))
                ]))
          ]),
          SizedBox(height: 8.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgMapsAndFlags3,
                height: 20.adaptSize,
                width: 20.adaptSize),
            Container(
                width: 87.h,
                margin: EdgeInsets.only(left: 12.h),
                padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v),
                decoration: AppDecoration.fillOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                child:
                    Text("lbl_player_4".tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 41.v)
        ]));
  }

  /// Common widget
  Widget _buildMapsAndFlagsOne({
    required String imageProps,
    required String textProps,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: imageProps,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 1.v)),
      Container(
          width: 87.h,
          margin: EdgeInsets.only(left: 14.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v),
          decoration: AppDecoration.fillOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
          child: Text(textProps,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Navigates to the passNPlayScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.passNPlayScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapPlay() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
