import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 82.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 82.v),
                    padding: EdgeInsets.symmetric(horizontal: 35.h),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.outlinePrimary,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 118.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.h,
                                  vertical: 1.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Text(
                                  "lbl_settings".tr,
                                  style: CustomTextStyles.titleSmallYellow700,
                                ),
                              ),
                              SizedBox(height: 14.v),
                              _buildRequestAccountRow(
                                requestText: "msg_get_your_profile".tr,
                                deleteText: "lbl_get_verified".tr,
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                      child: Text(
                                        "lbl_audio".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    Container(
                                      height: 20.v,
                                      width: 30.h,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.h),
                                      decoration: AppDecoration.outlinePrimary3
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgVolume2,
                                        height: 15.adaptSize,
                                        width: 15.adaptSize,
                                        alignment: Alignment.bottomLeft,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 4.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 2.h,
                                        top: 3.v,
                                        bottom: 3.v,
                                      ),
                                      child: Text(
                                        "lbl_tutorial".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    _buildPlayButton(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 3.v,
                                        bottom: 1.v,
                                      ),
                                      child: Text(
                                        "lbl_language".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 5.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 4.h,
                                        vertical: 1.v,
                                      ),
                                      decoration: AppDecoration.outlinePrimary3
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text(
                                              "lbl_english".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgChevronDown,
                                            height: 10.adaptSize,
                                            width: 10.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 8.h,
                                              top: 2.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 2.h,
                                        top: 2.v,
                                        bottom: 2.v,
                                      ),
                                      child: Text(
                                        "lbl_themes".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    _buildSelectButton(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 2.h,
                                        top: 2.v,
                                        bottom: 2.v,
                                      ),
                                      child: Text(
                                        "lbl_store".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    _buildViewButton(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                      child: Text(
                                        "lbl_support_email".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    Spacer(),
                                    _buildFaqButton(),
                                    _buildComposeButton(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 2.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.v),
                                      child: Text(
                                        "lbl_support_email".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 23.v,
                                      width: 52.h,
                                      margin: EdgeInsets.only(bottom: 3.v),
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 8.h,
                                                vertical: 2.v,
                                              ),
                                              decoration: AppDecoration
                                                  .outlinePrimary3
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8,
                                              ),
                                              child: Text(
                                                "lbl_tutorial".tr,
                                                style:
                                                    theme.textTheme.labelSmall,
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgYoutube13,
                                            height: 9.adaptSize,
                                            width: 9.adaptSize,
                                            alignment: Alignment.topRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                    _buildRulesButton(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 3.v,
                                        bottom: 1.v,
                                      ),
                                      child: Text(
                                        "lbl_privacy_policy".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    _buildViewButton1(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Text(
                                        "lbl_leaderboard".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 20.v,
                                      width: 30.h,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 7.h),
                                      decoration: AppDecoration.outlinePrimary3
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgGamepad1,
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                    ),
                                    Container(
                                      height: 20.v,
                                      width: 30.h,
                                      margin: EdgeInsets.only(left: 4.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7.h,
                                        vertical: 2.v,
                                      ),
                                      decoration: AppDecoration.outlinePrimary3
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgWinner2,
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                      child: Text(
                                        "lbl_achievements".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    _buildViewButton2(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 2.v,
                                        bottom: 3.v,
                                      ),
                                      child: Text(
                                        "lbl_notifications".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    _buildEditButton(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 5.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                      child: Text(
                                        "lbl_troubleshoot".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    _buildInfoButton(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8.v),
                              _buildRequestAccountRow(
                                requestText: "msg_request_account".tr,
                                deleteText: "lbl_delete_account".tr,
                              ),
                              SizedBox(height: 6.v),
                              _buildRequestAccountRow(
                                requestText: "lbl_version".tr,
                                deleteText: "lbl_8_0_0_263".tr,
                              ),
                              SizedBox(height: 8.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 1.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 3.h,
                                        top: 4.v,
                                        bottom: 7.v,
                                      ),
                                      child: Text(
                                        "lbl_find_us_on".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFacebook1,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 4.v),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgInstagram2,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 11.h,
                                        top: 4.v,
                                        bottom: 4.v,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgTwitter1,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 11.h,
                                        top: 4.v,
                                        bottom: 4.v,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgYoutube11,
                                      height: 28.adaptSize,
                                      width: 28.adaptSize,
                                      margin: EdgeInsets.only(left: 11.h),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.v),
                              _buildMoreGamesButton(),
                              SizedBox(height: 47.v),
                            ],
                          ),
                        ),
                        SizedBox(height: 31.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup14,
                          height: 36.v,
                          width: 118.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayButton() {
    return CustomOutlinedButton(
      width: 54.h,
      text: "lbl_play".tr,
      margin: EdgeInsets.only(top: 2.v),
    );
  }

  /// Section Widget
  Widget _buildSelectButton() {
    return CustomOutlinedButton(
      width: 54.h,
      text: "lbl_select".tr,
    );
  }

  /// Section Widget
  Widget _buildViewButton() {
    return CustomOutlinedButton(
      width: 54.h,
      text: "lbl_view".tr,
    );
  }

  /// Section Widget
  Widget _buildFaqButton() {
    return CustomOutlinedButton(
      width: 52.h,
      text: "lbl_faq".tr,
    );
  }

  /// Section Widget
  Widget _buildComposeButton() {
    return CustomOutlinedButton(
      width: 52.h,
      text: "lbl_compose".tr,
      margin: EdgeInsets.only(left: 6.h),
    );
  }

  /// Section Widget
  Widget _buildRulesButton() {
    return CustomOutlinedButton(
      width: 52.h,
      text: "lbl_rules".tr,
      margin: EdgeInsets.only(
        left: 5.h,
        top: 3.v,
        bottom: 3.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildViewButton1() {
    return CustomOutlinedButton(
      width: 52.h,
      text: "lbl_view".tr,
    );
  }

  /// Section Widget
  Widget _buildViewButton2() {
    return CustomOutlinedButton(
      width: 52.h,
      text: "lbl_view".tr,
    );
  }

  /// Section Widget
  Widget _buildEditButton() {
    return CustomOutlinedButton(
      width: 52.h,
      text: "lbl_edit".tr,
    );
  }

  /// Section Widget
  Widget _buildInfoButton() {
    return CustomOutlinedButton(
      width: 52.h,
      text: "lbl_info".tr,
    );
  }

  /// Section Widget
  Widget _buildMoreGamesButton() {
    return CustomOutlinedButton(
      height: 25.v,
      width: 111.h,
      text: "lbl_more_games".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgPlussymbolbutton1,
          height: 10.adaptSize,
          width: 10.adaptSize,
        ),
      ),
      buttonTextStyle: theme.textTheme.labelMedium!,
    );
  }

  /// Common widget
  Widget _buildRequestAccountRow({
    required String requestText,
    required String deleteText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 1.v,
            ),
            child: Text(
              requestText,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.blueA200,
              ),
            ),
          ),
          Container(
            width: 52.h,
            padding: EdgeInsets.all(5.h),
            decoration: AppDecoration.outlinePrimary3.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Text(
              deleteText,
              style: CustomTextStyles.robotoYellow700.copyWith(
                color: appTheme.yellow700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
