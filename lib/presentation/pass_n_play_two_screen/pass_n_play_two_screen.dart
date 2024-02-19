import 'controller/pass_n_play_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class PassNPlayTwoScreen extends GetWidget<PassNPlayTwoController> {
  const PassNPlayTwoScreen({Key? key}) : super(key: key);

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
                      _buildAndroidLargeColumn(),
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
                            text: "lbl_play".tr,
                            margin: EdgeInsets.only(left: 73.h),
                            buttonTextStyle: theme.textTheme.titleLarge!,
                            onPressed: () {
                              onTapPlay();
                            })
                      ]),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildAndroidLargeColumn() {
    return Container(
        width: 290.h,
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text("msg_choose_color_and".tr,
                      style: CustomTextStyles.titleSmallYellow700_1)),
              SizedBox(height: 23.v),
              Padding(
                  padding: EdgeInsets.only(left: 28.h, right: 48.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 2.v, bottom: 7.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCheckCircle1,
                                      height: 45.adaptSize,
                                      width: 45.adaptSize),
                                  SizedBox(height: 27.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCircle41,
                                      height: 37.adaptSize,
                                      width: 37.adaptSize)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Column(children: [
                              _buildMapsAndFlagsOneRow(
                                  image: ImageConstant.imgMapsAndFlags2,
                                  playerCounter: "lbl_player_1".tr),
                              SizedBox(height: 10.v),
                              _buildMapsAndFlagsOneRow(
                                  image: ImageConstant.imgMapsAndFlags1,
                                  playerCounter: "lbl_player_2".tr),
                              SizedBox(height: 19.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMapsAndFlags140x40,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize),
                                    Container(
                                        height: 19.v,
                                        width: 87.h,
                                        margin: EdgeInsets.only(left: 13.h),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 19.v,
                                                      width: 87.h,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.h)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h),
                                                      child: Text(
                                                          "lbl_player_1".tr,
                                                          style: theme.textTheme
                                                              .bodySmall)))
                                            ]))
                                  ]),
                              SizedBox(height: 8.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMapsAndFlags3,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize),
                                    Container(
                                        width: 87.h,
                                        margin: EdgeInsets.only(left: 12.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 9.h, vertical: 1.v),
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder3),
                                        child: Text("lbl_player_2".tr,
                                            style: theme.textTheme.bodySmall))
                                  ])
                            ]))
                      ])),
              SizedBox(height: 47.v),
              Row(children: [
                Container(
                    width: 34.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 1.v),
                    decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3),
                    child:
                        Text("lbl_2p".tr, style: theme.textTheme.titleSmall)),
                Container(
                    width: 34.h,
                    margin: EdgeInsets.only(left: 23.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v),
                    decoration: AppDecoration.outlinePrimary11.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3),
                    child:
                        Text("lbl_3p".tr, style: theme.textTheme.titleSmall)),
                Container(
                    width: 34.h,
                    margin: EdgeInsets.only(left: 23.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 1.v),
                    decoration: AppDecoration.outlinePrimary11.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3),
                    child: Text("lbl_4p".tr, style: theme.textTheme.titleSmall))
              ]),
              SizedBox(height: 3.v)
            ]));
  }

  /// Common widget
  Widget _buildMapsAndFlagsOneRow({
    required String image,
    required String playerCounter,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: image,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 1.v)),
      Container(
          width: 87.h,
          margin: EdgeInsets.only(left: 14.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v),
          decoration: AppDecoration.fillOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
          child: Text(playerCounter,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Navigates to the passNPlayOneScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.passNPlayOneScreen,
    );
  }

  /// Navigates to the passNPlayGameScreen when the action is triggered.
  onTapPlay() {
    Get.toNamed(
      AppRoutes.passNPlayGameScreen,
    );
  }
}
