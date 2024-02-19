import 'controller/pass_n_play_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class PassNPlayThreeScreen extends GetWidget<PassNPlayThreeController> {
  const PassNPlayThreeScreen({Key? key}) : super(key: key);

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
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(right: 81.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 4.v),
                                    child: CustomIconButton(
                                        height: 28.adaptSize,
                                        width: 28.adaptSize,
                                        padding: EdgeInsets.all(3.h),
                                        onTap: () {
                                          onTapBtnIconButton();
                                        },
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFrame4))),
                                CustomOutlinedButton(
                                    height: 31.v,
                                    width: 94.h,
                                    text: "lbl_play".tr,
                                    buttonTextStyle:
                                        theme.textTheme.titleLarge!,
                                    onPressed: () {
                                      onTapPlay();
                                    })
                              ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
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
                  padding: EdgeInsets.only(left: 51.h),
                  child: _buildMapsAndFlagsOneRow(
                      image: ImageConstant.imgMapsAndFlags2,
                      playerCounter: "lbl_player_1".tr)),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: _buildMapsAndFlagsOneRow(
                      image: ImageConstant.imgMapsAndFlags1,
                      playerCounter: "lbl_player_2".tr)),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: _buildMapsAndFlagsOneRow(
                      image: ImageConstant.imgMapsAndFlags140x40,
                      playerCounter: "lbl_player_3".tr)),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: _buildMapsAndFlagsOneRow(
                      image: ImageConstant.imgMapsAndFlags3,
                      playerCounter: "lbl_player_4".tr)),
              SizedBox(height: 55.v),
              Row(children: [
                Container(
                    width: 34.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 1.v),
                    decoration: AppDecoration.outlinePrimary11.copyWith(
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
                    margin: EdgeInsets.only(left: 21.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 1.v),
                    decoration: AppDecoration.outlinePrimaryContainer.copyWith(
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
    return Row(children: [
      CustomImageView(
          imagePath: image, height: 20.adaptSize, width: 20.adaptSize),
      Container(
          width: 87.h,
          margin: EdgeInsets.only(left: 12.h),
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v),
          decoration: AppDecoration.fillOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
          child: Text(playerCounter,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Navigates to the passNPlayTwoScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.passNPlayTwoScreen,
    );
  }

  /// Navigates to the passNPlayGameScreen when the action is triggered.
  onTapPlay() {
    Get.toNamed(
      AppRoutes.passNPlayGameScreen,
    );
  }
}
