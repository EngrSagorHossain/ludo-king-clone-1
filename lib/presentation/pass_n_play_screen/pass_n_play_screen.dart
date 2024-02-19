import 'controller/pass_n_play_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class PassNPlayScreen extends GetWidget<PassNPlayController> {
  const PassNPlayScreen({Key? key}) : super(key: key);

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
                      _buildPassNPlay(),
                      SizedBox(height: 19.v),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
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
                            margin: EdgeInsets.only(left: 69.h),
                            buttonTextStyle: theme.textTheme.titleLarge!,
                            onPressed: () {
                              onTapNext();
                            })
                      ]),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildPassNPlay() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_select_game".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 30.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.h, vertical: 2.v),
                        decoration: AppDecoration.outlinePrimary12.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgPerson4,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 14.v, bottom: 16.v)),
                              Container(
                                  height: 44.v,
                                  width: 31.h,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("lbl_vs".tr,
                                                style: CustomTextStyles
                                                    .labelLargeOnPrimaryContainer13)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 1.h, right: 15.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPerson4,
                                                          height: 15.adaptSize,
                                                          width: 15.adaptSize),
                                                      SizedBox(height: 14.v),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPerson4,
                                                          height: 15.adaptSize,
                                                          width: 15.adaptSize)
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgPerson4,
                                            height: 15.adaptSize,
                                            width: 15.adaptSize,
                                            alignment: Alignment.centerRight)
                                      ]))
                            ])),
                    Container(
                        height: 35.v,
                        width: 121.h,
                        margin: EdgeInsets.symmetric(vertical: 10.v),
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin: EdgeInsets.only(left: 3.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 2.v),
                                  decoration: AppDecoration.outlinePrimary11
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        Text("lbl_classic".tr,
                                            style: CustomTextStyles
                                                .titleSmallYellow700_1)
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgCheckCircle1,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                              alignment: Alignment.centerLeft)
                        ]))
                  ])),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        decoration: AppDecoration.outlinePrimary12.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 32.v,
                                  width: 35.h,
                                  margin:
                                      EdgeInsets.only(top: 13.v, bottom: 3.v),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgPeople1,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            alignment: Alignment.bottomLeft),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Text("lbl_vs".tr,
                                                style: CustomTextStyles
                                                    .labelLargeOnPrimaryContainer13))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgPeople1,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 3.h, bottom: 29.v))
                            ])),
                    GestureDetector(
                        onTap: () {
                          onTapNinetyNine();
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(vertical: 13.v),
                            decoration: AppDecoration.outlinePrimary11.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL15),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgCircle41,
                                  height: 27.adaptSize,
                                  width: 27.adaptSize),
                              Container(
                                  height: 21.v,
                                  width: 40.h,
                                  margin: EdgeInsets.only(
                                      left: 18.h, top: 3.v, bottom: 2.v),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text("lbl_team_up".tr,
                                                style: CustomTextStyles
                                                    .labelMediumYellow700)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Text("lbl_classic".tr,
                                                style:
                                                    theme.textTheme.labelSmall))
                                      ]))
                            ])))
                  ])),
          SizedBox(height: 47.v)
        ]));
  }

  /// Navigates to the passNPlayOneScreen when the action is triggered.
  onTapNinetyNine() {
    Get.toNamed(
      AppRoutes.passNPlayOneScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the passNPlayTwoScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.passNPlayTwoScreen,
    );
  }
}
