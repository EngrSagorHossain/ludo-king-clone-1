import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/core/utils/validation_functions.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';
import 'package:ludo_king_clone/widgets/custom_pin_code_text_field.dart';
import 'package:ludo_king_clone/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 118.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.outlinePrimary3.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                      ),
                      child: Text(
                        "lbl_statistics".tr,
                        style: CustomTextStyles.titleSmallYellow70014,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 34.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 6.v,
                                ),
                                decoration: AppDecoration.outlinePrimary,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: 184.h,
                                        margin: EdgeInsets.only(right: 26.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 30.h,
                                          vertical: 1.v,
                                        ),
                                        decoration:
                                            AppDecoration.outlineGray.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: Text(
                                          "lbl_guest8364".tr,
                                          style: CustomTextStyles
                                              .titleMediumBlack900,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 54.h),
                                        child: Text(
                                          "msg_645457eregfeghfhehefg33".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.v),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 1.h,
                                        right: 6.h,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 60.adaptSize,
                                            width: 60.adaptSize,
                                            decoration: AppDecoration
                                                .outlinePrimary4
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder3,
                                            ),
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgUnnamed2,
                                              height: 58.adaptSize,
                                              width: 58.adaptSize,
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.v),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: 167.h,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 21.v,
                                                        width: 33.h,
                                                        margin: EdgeInsets.only(
                                                            top: 1.v),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 9.h,
                                                          vertical: 3.v,
                                                        ),
                                                        decoration:
                                                            AppDecoration
                                                                .fillTeal,
                                                        child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEarth1,
                                                          height: 15.adaptSize,
                                                          width: 15.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                      ),
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 7.h,
                                                          vertical: 1.v,
                                                        ),
                                                        decoration:
                                                            AppDecoration
                                                                .outlinePrimary5
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder3,
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgCoin1,
                                                              height:
                                                                  12.adaptSize,
                                                              width:
                                                                  12.adaptSize,
                                                              margin: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          2.v),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          7.h),
                                                              child: Text(
                                                                "lbl_4450".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeOnPrimaryContainerMedium,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 8.v),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 83.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 5.h,
                                                      vertical: 1.v,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlinePrimary5
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder3,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgDiamond23,
                                                          height: 12.adaptSize,
                                                          width: 12.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 3.v,
                                                            bottom: 2.v,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 5.h,
                                                            top: 2.v,
                                                          ),
                                                          child: Text(
                                                            "lbl_503".tr,
                                                            style: CustomTextStyles
                                                                .labelLargeOnPrimaryContainerMedium,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 7.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin:
                                                EdgeInsets.only(bottom: 1.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.h),
                                            decoration:
                                                AppDecoration.fillGray.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder3,
                                            ),
                                            child: Row(
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgMedal1,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  margin:
                                                      EdgeInsets.only(top: 3.v),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 4.h,
                                                    top: 3.v,
                                                    bottom: 3.v,
                                                  ),
                                                  child: Text(
                                                    "lbl_0".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimaryContainerMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 23.v,
                                            width: 111.h,
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                      left: 12.h,
                                                      top: 5.v,
                                                      bottom: 3.v,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlinePrimary6
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder3,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 13.v,
                                                          width: 36.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: appTheme
                                                                .yellow900,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 18.h),
                                                          child: Text(
                                                            "lbl_1_20".tr,
                                                            style: CustomTextStyles
                                                                .labelSmallOnPrimaryContainerMedium8,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: SizedBox(
                                                    height: 23.adaptSize,
                                                    width: 23.adaptSize,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgStar12,
                                                          height: 23.adaptSize,
                                                          width: 23.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 9.h,
                                                              bottom: 4.v,
                                                            ),
                                                            child: Text(
                                                              "lbl_1".tr,
                                                              style: CustomTextStyles
                                                                  .labelSmallBlack900,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 17.h),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 2.v),
                                              child: Text(
                                                "msg_performance_rating".tr,
                                                style: CustomTextStyles
                                                    .labelSmallOnPrimaryContainerMedium,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 50.h),
                                              child: Text(
                                                "lbl_level".tr,
                                                style: CustomTextStyles
                                                    .labelMediumMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.v),
                                    _buildNameEditText(),
                                    SizedBox(height: 10.v),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 1.h,
                                        right: 3.h,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 81.h),
                                      decoration: AppDecoration
                                          .fillOnErrorContainer
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgCrown1,
                                            height: 40.adaptSize,
                                            width: 40.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 4.v),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 9.v,
                                              right: 3.h,
                                              bottom: 7.v,
                                            ),
                                            child: Text(
                                              "lbl_00".tr,
                                              style:
                                                  CustomTextStyles.titleLarge23,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8.v),
                                    Container(
                                      width: 247.h,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30.h,
                                        vertical: 3.v,
                                      ),
                                      decoration: AppDecoration.outlinePrimary2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3,
                                      ),
                                      child: Text(
                                        "msg_online_multiplayer".tr,
                                        style: CustomTextStyles
                                            .titleSmallYellow700_1,
                                      ),
                                    ),
                                    SizedBox(height: 8.v),
                                    SizedBox(
                                      height: 36.v,
                                      width: 247.h,
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          _buildOtpView(),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              height: 8.v,
                                              width: 37.h,
                                              margin:
                                                  EdgeInsets.only(right: 53.h),
                                              decoration: BoxDecoration(
                                                color: appTheme.gray90002,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 66.h),
                                              child: Text(
                                                "lbl_01".tr,
                                                style: CustomTextStyles
                                                    .robotoOnPrimaryContainer,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              "lbl_00".tr,
                                              style: CustomTextStyles
                                                  .robotoOnPrimaryContainer,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 68.h),
                                              child: Text(
                                                "lbl_02".tr,
                                                style: CustomTextStyles
                                                    .robotoOnPrimaryContainer,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 13.h),
                                              child: Text(
                                                "lbl_00".tr,
                                                style: CustomTextStyles
                                                    .robotoOnPrimaryContainer,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 13.h),
                                              child: Text(
                                                "lbl_00".tr,
                                                style: CustomTextStyles
                                                    .robotoOnPrimaryContainer,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 26.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomIconButton(
                                            height: 28.adaptSize,
                                            width: 28.adaptSize,
                                            padding: EdgeInsets.all(3.h),
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFrame4,
                                            ),
                                          ),
                                          _buildEditProfile(),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10.v),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 31.h,
                                top: 165.v,
                                bottom: 260.v,
                              ),
                              child: Text(
                                "lbl_1".tr,
                                style: CustomTextStyles.labelSmallBlack900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    _buildGoogle1(),
                    SizedBox(height: 5.v),
                    _buildShare(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText() {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 3.h,
      ),
      child: CustomTextFormField(
        controller: controller.nameEditTextController,
        hintText: "lbl_tournament_wins".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 4.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOtpView() {
    return Obx(
      () => CustomPinCodeTextField(
        context: Get.context!,
        controller: controller.otpController.value,
        onChanged: (value) {},
      ),
    );
  }

  /// Section Widget
  Widget _buildEditProfile() {
    return CustomOutlinedButton(
      width: 98.h,
      text: "lbl_edit_profile".tr,
      margin: EdgeInsets.only(top: 8.v),
    );
  }

  /// Section Widget
  Widget _buildGoogle() {
    return Expanded(
      child: CustomOutlinedButton(
        height: 26.v,
        text: "lbl_google".tr,
        margin: EdgeInsets.only(right: 3.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 13.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGoogle1,
            height: 15.adaptSize,
            width: 15.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineGray,
        buttonTextStyle: CustomTextStyles.labelSmallGray600,
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayGames() {
    return Expanded(
      child: CustomOutlinedButton(
        height: 26.v,
        text: "lbl_play_games".tr,
        margin: EdgeInsets.only(left: 3.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 14.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGoogleplaygames1,
            height: 15.adaptSize,
            width: 15.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineGray,
        buttonTextStyle: CustomTextStyles.labelSmallGray600,
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogle1() {
    return Container(
      margin: EdgeInsets.only(
        left: 30.h,
        right: 34.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlinePrimary7.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 1.h,
              right: 4.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineGray800,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFacebook1,
                  height: 20.v,
                  width: 22.h,
                  margin: EdgeInsets.only(top: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "msg_login_with_facebook".tr,
                    style: CustomTextStyles.titleSmall14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Text(
            "lbl_sign_in_with".tr,
            style: CustomTextStyles.labelSmallOnPrimaryContainer,
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildGoogle(),
                _buildPlayGames(),
              ],
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShare() {
    return CustomOutlinedButton(
      height: 26.v,
      width: 99.h,
      text: "lbl_share".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook1,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray1,
      buttonTextStyle: CustomTextStyles.titleSmall14,
    );
  }
}
