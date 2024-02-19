import 'controller/tournament_result_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ludo_king_clone/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TournamentResultScreen extends GetWidget<TournamentResultController> {
  const TournamentResultScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: Column(
            children: [
              Spacer(
                flex: 36,
              ),
              _buildAndroidLarge(),
              Spacer(
                flex: 63,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 28.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroup11,
        margin: EdgeInsets.only(
          left: 17.h,
          right: 311.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlinePrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_level_12".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 20.v),
          Text(
            "msg_ludu_championship".tr,
            style: CustomTextStyles.bodyLarge16,
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 22.h),
              child: Text(
                "msg_best_tournaments".tr,
                style: CustomTextStyles.bodySmallOnPrimaryContainer,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "lbl_congratulation".tr,
            style: CustomTextStyles.bodyLarge16,
          ),
          SizedBox(height: 3.v),
          Text(
            "lbl_level_1".tr,
            style: CustomTextStyles.bodyLarge16,
          ),
          SizedBox(height: 40.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlinePrimary7.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgDc2ec5a571974417a5551420a4fb05871,
                        height: 15.v,
                        width: 25.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 13.h,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_sakif_khan".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_winner".tr,
                    style: CustomTextStyles.labelLargeOnPrimaryContainer,
                  ),
                ),
                Container(
                  width: 39.h,
                  margin: EdgeInsets.only(
                    top: 7.v,
                    bottom: 6.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillLightBlue.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Text(
                    "lbl_next".tr,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 129.h,
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  decoration: AppDecoration.outlinePrimary12.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUnnamed2,
                        height: 16.v,
                        width: 25.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Text(
                          "lbl_tamim_khan".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "lbl_loser".tr,
                    style: CustomTextStyles.labelLargeOnPrimaryContainer,
                  ),
                ),
                Container(
                  width: 39.h,
                  margin: EdgeInsets.only(
                    top: 6.v,
                    bottom: 7.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillLightBlue.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Text(
                    "lbl_next".tr,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
