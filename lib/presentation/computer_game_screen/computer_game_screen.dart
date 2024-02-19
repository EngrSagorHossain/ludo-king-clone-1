import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_switch.dart';

import '../../widgets/custom_outlined_button.dart';
import 'controller/computer_game_controller.dart';

class ComputerGameScreen extends GetWidget<ComputerGameController> {
  const ComputerGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 23.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: CustomIconButton(
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              padding: EdgeInsets.all(3.h),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      contentPadding: EdgeInsets.zero,
                                      content: Container(
                                        decoration:
                                            AppDecoration.outlinePrimary,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 70.h),
                                                  child: Text(
                                                      "lbl_quit_game".tr,
                                                      style: theme.textTheme
                                                          .headlineSmall)),
                                              SizedBox(height: 67.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 5.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomOutlinedButton(
                                                            onPressed: () {
                                                              Get.offAllNamed(
                                                                  AppRoutes
                                                                      .homeScreen);
                                                            },
                                                            height: 28.v,
                                                            width: 55.h,
                                                            text: "lbl_yes".tr,
                                                            buttonTextStyle: theme
                                                                .textTheme
                                                                .titleSmall!),
                                                        Container(
                                                            height: 28.v,
                                                            width: 34.h,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        7.h,
                                                                    vertical:
                                                                        2.v),
                                                            decoration: AppDecoration
                                                                .outlinePrimary11
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder3),
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVolume2,
                                                                height: 17.v,
                                                                width: 15.h,
                                                                alignment: Alignment
                                                                    .bottomRight)),
                                                        Container(
                                                            height: 28.v,
                                                            width: 34.h,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        7.h,
                                                                    vertical:
                                                                        4.v),
                                                            decoration: AppDecoration
                                                                .outlinePrimary11
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder3),
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMusicalNoteSymbol,
                                                                height: 15
                                                                    .adaptSize,
                                                                width: 15
                                                                    .adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft)),
                                                        CustomOutlinedButton(
                                                            height: 28.v,
                                                            width: 55.h,
                                                            text: "lbl_no".tr,
                                                            buttonTextStyle:
                                                                theme.textTheme
                                                                    .titleSmall!,
                                                            onPressed: () {
                                                              Get.back();
                                                            })
                                                      ])),
                                              SizedBox(height: 28.v)
                                            ]),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgFrame4))),
                      SizedBox(height: 65.v),
                      Obx(() => CustomSwitch(
                          margin: EdgeInsets.only(right: 24.h),
                          alignment: Alignment.centerRight,
                          value: controller.isSelectedSwitch.value,
                          onChange: (value) {
                            controller.isSelectedSwitch.value = value;
                          })),
                      SizedBox(height: 11.v),
                      _buildPlayerCounterColumn(),
                      SizedBox(height: 12.v),
                      Container(
                          margin: EdgeInsets.only(left: 16.h),
                          decoration: AppDecoration.outlinePrimary8,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMapsAndFlags2,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 6.h, top: 7.v, bottom: 7.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: CustomIconButton(
                                        height: 44.v,
                                        width: 46.h,
                                        padding: EdgeInsets.all(7.h),
                                        decoration: IconButtonStyleHelper
                                            .gradientYellowAToPinkA,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup5)))
                              ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildPlayerCounterColumn() {
    return SizedBox(
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
                  padding: EdgeInsets.only(left: 48.h, right: 51.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("lbl_player_1".tr,
                            style:
                                CustomTextStyles.labelLargeOnPrimaryContainer)),
                    SizedBox(height: 318.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_player_2".tr,
                              style: CustomTextStyles
                                  .labelLargeOnPrimaryContainer),
                          Text("lbl_player_4".tr,
                              style:
                                  CustomTextStyles.labelLargeOnPrimaryContainer)
                        ])
                  ])))
        ]));
  }

  /// Navigates to the exitThreeScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.exitThreeScreen,
    );
  }
}
