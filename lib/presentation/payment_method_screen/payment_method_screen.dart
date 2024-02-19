import 'controller/payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ludo_king_clone/widgets/app_bar/appbar_title.dart';
import 'package:ludo_king_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 85.h, vertical: 31.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 9.v),
                          decoration: AppDecoration.outlinePrimary10,
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            Container(
                                height: 21.v,
                                width: 36.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 2.v),
                                decoration: AppDecoration.outlineBlack,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgBkashLogo0c15,
                                    height: 13.v,
                                    width: 15.h,
                                    alignment: Alignment.bottomLeft)),
                            Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text("lbl_bkash".tr,
                                    style: theme.textTheme.bodyLarge))
                          ])),
                      SizedBox(height: 19.v),
                      _buildNagadButton(),
                      SizedBox(height: 19.v),
                      _buildRocketButton(),
                      SizedBox(height: 19.v),
                      _buildDutchBanglaButton(),
                      SizedBox(height: 19.v),
                      _buildVisaCardButton(),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgGroup11,
            margin: EdgeInsets.only(left: 18.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapIconButton();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_payment_method".tr));
  }

  /// Section Widget
  Widget _buildNagadButton() {
    return CustomOutlinedButton(
        height: 43.v,
        text: "lbl_nagad".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            margin: EdgeInsets.only(right: 20.h),
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                border: Border.all(
                    color: appTheme.black900.withOpacity(0.2), width: 1.h)),
            child: CustomImageView(
                imagePath: ImageConstant.img31removebgpreview1,
                height: 21.v,
                width: 30.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary1,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildRocketButton() {
    return CustomOutlinedButton(
        height: 43.v,
        text: "lbl_rocket".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            padding: EdgeInsets.only(left: 3.h, right: 3.h, bottom: 1.v),
            margin: EdgeInsets.only(right: 20.h),
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                border: Border.all(
                    color: appTheme.black900.withOpacity(0.2), width: 1.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgRocketremovebgpreview1,
                height: 20.v,
                width: 30.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary1,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildDutchBanglaButton() {
    return CustomOutlinedButton(
        height: 43.v,
        text: "lbl_dutch_bangla".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            padding: EdgeInsets.fromLTRB(8.h, 3.v, 10.h, 4.v),
            margin: EdgeInsets.only(right: 20.h),
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                border: Border.all(
                    color: appTheme.black900.withOpacity(0.2), width: 1.h)),
            child: CustomImageView(
                imagePath:
                    ImageConstant.imgDutchbanglabanklogo9af0455399seeklogo1,
                height: 13.v,
                width: 18.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary1,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildVisaCardButton() {
    return CustomOutlinedButton(
        height: 43.v,
        text: "lbl_visa_card".tr,
        margin: EdgeInsets.only(left: 10.h),
        buttonStyle: CustomButtonStyles.outlinePrimary1,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Navigates to the paymentsOrRegistrationScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.paymentsOrRegistrationScreen,
    );
  }
}
