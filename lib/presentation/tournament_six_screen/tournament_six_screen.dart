import 'controller/tournament_six_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_elevated_button.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_text_form_field.dart';

class TournamentSixScreen extends GetWidget<TournamentSixController> {
  const TournamentSixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 118.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 1.v),
                          decoration: AppDecoration.outlinePrimary11.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3),
                          child: Text("lbl_classic".tr,
                              style: CustomTextStyles.titleSmallYellow700_1)),
                      SizedBox(height: 5.v),
                      _buildClassicText(),
                      SizedBox(height: 34.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: CustomIconButton(
                                    height: 28.v,
                                    width: 32.h,
                                    padding: EdgeInsets.all(4.h),
                                    onTap: () {
                                      onTapBtnIconButton();
                                    },
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup11))),
                            CustomElevatedButton(
                                width: 107.h,
                                text: "lbl_confirm".tr,
                                margin: EdgeInsets.only(left: 58.h),
                                buttonStyle: CustomButtonStyles.fillLightBlue,
                                onPressed: () {
                                  onTapConfirm();
                                })
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildClassicText() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("msg_select_your_color".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                        margin: EdgeInsets.symmetric(horizontal: 13.h))),
                Expanded(
                    child: CustomImageView(
                        imagePath: ImageConstant.imgMapsAndFlags1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        margin: EdgeInsets.symmetric(horizontal: 13.h))),
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: CustomImageView(
                        imagePath: ImageConstant.imgCheck11,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        margin: EdgeInsets.only(top: 3.v, right: 17.h))),
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
                        margin: EdgeInsets.only(left: 17.h, bottom: 3.v)))
              ])),
          SizedBox(height: 41.v),
          Text("msg_select_your_time".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 10.v),
          Padding(
              padding: EdgeInsets.only(left: 37.h, right: 33.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_hour".tr, style: theme.textTheme.titleSmall),
                    Text("lbl_minute".tr, style: theme.textTheme.titleSmall)
                  ])),
          SizedBox(height: 7.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomTextFormField(
                    width: 87.h, controller: controller.editTextController),
                Padding(
                    padding: EdgeInsets.only(left: 7.h, top: 9.v, bottom: 10.v),
                    child: Text("lbl_am_pm".tr,
                        style: CustomTextStyles.bodySmallGray600018)),
                Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: CustomTextFormField(
                        width: 87.h,
                        controller: controller.editTextController1,
                        textInputAction: TextInputAction.done))
              ])),
          SizedBox(height: 7.v)
        ]));
  }

  /// Navigates to the tournamentFiveScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.tournamentFiveScreen,
    );
  }

  /// Navigates to the tournamentGameScreen when the action is triggered.
  onTapConfirm() {
    Get.toNamed(
      AppRoutes.tournamentGameScreen,
    );
  }
}
