import 'controller/pass_n_play_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class PassNPlayFourScreen extends GetWidget<PassNPlayFourController> {
  const PassNPlayFourScreen({Key? key}) : super(key: key);

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
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Row(children: [
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
                                margin: EdgeInsets.only(left: 63.h),
                                buttonTextStyle: theme.textTheme.titleLarge!,
                                onPressed: () {
                                  onTapPlay();
                                })
                          ])),
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
              SizedBox(height: 21.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, right: 21.h),
                  child: Row(children: [
                    _buildMapsAndFlagsStack(
                        image2: ImageConstant.imgMapsAndFlags2),
                    CustomImageView(
                        imagePath: ImageConstant.imgMapsAndFlags140x40,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin:
                            EdgeInsets.only(left: 9.h, top: 5.v, bottom: 5.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgMapsAndFlags1,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin:
                            EdgeInsets.only(left: 12.h, top: 5.v, bottom: 5.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgMapsAndFlags3,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin:
                            EdgeInsets.only(left: 14.h, top: 5.v, bottom: 5.v)),
                    Container(
                        width: 87.h,
                        margin:
                            EdgeInsets.only(left: 17.h, top: 5.v, bottom: 5.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 19.h, vertical: 1.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                        child: Text("lbl_player_1".tr,
                            style: theme.textTheme.bodySmall))
                  ])),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, right: 21.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMapsAndFlags2,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 5.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgMapsAndFlags140x40,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin:
                            EdgeInsets.only(left: 14.h, top: 5.v, bottom: 5.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: _buildMapsAndFlagsStack(
                            image2: ImageConstant.imgMapsAndFlags1)),
                    CustomImageView(
                        imagePath: ImageConstant.imgMapsAndFlags3,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin:
                            EdgeInsets.only(left: 9.h, top: 5.v, bottom: 5.v)),
                    Container(
                        width: 87.h,
                        margin:
                            EdgeInsets.only(left: 17.h, top: 3.v, bottom: 8.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 19.h, vertical: 1.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                        child: Text("lbl_player_2".tr,
                            style: theme.textTheme.bodySmall))
                  ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, right: 21.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgMapsAndFlags2,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(top: 3.v, bottom: 7.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: _buildMapsAndFlagsStack(
                                image2: ImageConstant.imgMapsAndFlags140x40)),
                        CustomImageView(
                            imagePath: ImageConstant.imgMapsAndFlags1,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                                left: 8.h, top: 3.v, bottom: 7.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgMapsAndFlags3,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                                left: 13.h, top: 3.v, bottom: 6.v)),
                        Container(
                            width: 87.h,
                            margin: EdgeInsets.only(
                                left: 17.h, top: 3.v, bottom: 6.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 21.h, vertical: 1.v),
                            decoration: AppDecoration.fillOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Text("lbl_player_3".tr,
                                style: theme.textTheme.bodySmall))
                      ])),
              SizedBox(height: 57.v),
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
                        EdgeInsets.symmetric(horizontal: 7.h, vertical: 1.v),
                    decoration: AppDecoration.outlinePrimaryContainer.copyWith(
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
  Widget _buildMapsAndFlagsStack({required String image2}) {
    return SizedBox(
        height: 30.adaptSize,
        width: 30.adaptSize,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCircle41,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: image2,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 4.v))
        ]));
  }

  /// Navigates to the passNPlayThreeScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.passNPlayThreeScreen,
    );
  }

  /// Navigates to the passNPlayGameScreen when the action is triggered.
  onTapPlay() {
    Get.toNamed(
      AppRoutes.passNPlayGameScreen,
    );
  }
}
