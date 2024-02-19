import 'controller/tournament_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class TournamentTwoScreen extends GetWidget<TournamentTwoController> {
  const TournamentTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 35.h, top: 207.v, right: 35.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAndroidLargeSection(),
                      SizedBox(height: 27.v),
                      CustomIconButton(
                          height: 28.v,
                          width: 32.h,
                          padding: EdgeInsets.all(4.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup11)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildAndroidLargeSection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_select_game".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 36.v),
          CustomOutlinedButton(
              height: 42.v,
              text: "lbl_first_round".tr,
              buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
              buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer_1,
              onPressed: () {
                onTapFirstRound();
              }),
          SizedBox(height: 29.v),
          CustomOutlinedButton(
              height: 42.v,
              text: "lbl_final_round".tr,
              rightIcon: Container(
                  margin: EdgeInsets.only(),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLock2,
                      height: 25.adaptSize,
                      width: 25.adaptSize)),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
              buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer_1,
              onPressed: () {
                onTapFinalRound();
              }),
          SizedBox(height: 29.v)
        ]));
  }

  /// Navigates to the tournamentThreeScreen when the action is triggered.
  onTapFirstRound() {
    Get.toNamed(
      AppRoutes.tournamentThreeScreen,
    );
  }

  /// Navigates to the tournamentFourScreen when the action is triggered.
  onTapFinalRound() {
    Get.toNamed(
      AppRoutes.tournamentFourScreen,
    );
  }
}
