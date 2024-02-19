import 'controller/tournament_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_elevated_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class TournamentFiveScreen extends GetWidget<TournamentFiveController> {
  const TournamentFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildAndroidLarge(),
                      SizedBox(height: 33.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(children: [
                            GestureDetector(
                                onTap: () {
                                  onTapSix();
                                },
                                child: Container(
                                    height: 28.v,
                                    width: 32.h,
                                    margin: EdgeInsets.only(bottom: 4.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.h, vertical: 2.v),
                                    decoration: AppDecoration.outlinePrimary3
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup11,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        alignment: Alignment.centerLeft))),
                            CustomElevatedButton(
                                width: 94.h,
                                text: "lbl_chat".tr,
                                margin: EdgeInsets.only(left: 73.h),
                                buttonStyle:
                                    CustomButtonStyles.fillErrorContainerTL10,
                                onPressed: () {
                                  onTapChat();
                                })
                          ])),
                      SizedBox(height: 23.v),
                      CustomElevatedButton(
                          width: 94.h,
                          text: "lbl_next".tr,
                          buttonStyle:
                              CustomButtonStyles.fillErrorContainerTL10,
                          onPressed: () {
                            onTapNext();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_level_12".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 26.v),
          CustomOutlinedButton(
              height: 50.v,
              text: "lbl_sakif_khan".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  child: CustomImageView(
                      imagePath:
                          ImageConstant.imgDc2ec5a571974417a5551420a4fb05871,
                      height: 25.v,
                      width: 40.h)),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
              buttonTextStyle:
                  CustomTextStyles.titleMediumOnPrimaryContainer16),
          SizedBox(height: 7.v),
          Text("lbl_vs".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer),
          SizedBox(height: 7.v),
          CustomOutlinedButton(
              height: 50.v,
              text: "lbl_tamim_khan".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgUnnamed2,
                      height: 25.v,
                      width: 40.h)),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
              buttonTextStyle:
                  CustomTextStyles.titleMediumOnPrimaryContainer16),
          SizedBox(height: 17.v)
        ]));
  }

  /// Navigates to the tournamentThreeScreen when the action is triggered.
  onTapSix() {
    Get.toNamed(
      AppRoutes.tournamentThreeScreen,
    );
  }

  /// Navigates to the tournamentSixScreen when the action is triggered.
  onTapChat() {
    Get.toNamed(
      AppRoutes.tournamentSixScreen,
    );
  }

  /// Navigates to the tournamentSixScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.tournamentSixScreen,
    );
  }
}
