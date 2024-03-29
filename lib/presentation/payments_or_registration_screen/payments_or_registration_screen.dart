import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_elevated_button.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';

import 'controller/payments_or_registration_controller.dart';

class PaymentsOrRegistrationScreen
    extends GetWidget<PaymentsOrRegistrationController> {
  const PaymentsOrRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 55.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 44.v),
                      _buildPaymentOrRegistrationSection(),
                      SizedBox(height: 36.v),
                      CustomIconButton(
                          onTap: () => Get.back(),
                          height: 28.v,
                          width: 32.h,
                          padding: EdgeInsets.all(4.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup11))
                    ]))));
  }

  /// Section Widget
  Widget _buildPaymentOrRegistrationSection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 62.h, vertical: 38.v),
        decoration: AppDecoration.outlinePrimary9,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomElevatedButton(
              height: 43.v,
              text: "lbl_payments".tr,
              buttonStyle: CustomButtonStyles.outlineLimeE,
              buttonTextStyle: CustomTextStyles.titleSmallBold,
              onPressed: () {
                onTapPayments();
              }),
          SizedBox(height: 37.v),
          CustomElevatedButton(
              height: 43.v,
              text: "lbl_registration2".tr,
              buttonStyle: CustomButtonStyles.outlineIndigoE,
              buttonTextStyle: CustomTextStyles.titleSmallBold,
              onPressed: () {
                onTapRegistration();
              }),
          SizedBox(height: 23.v)
        ]));
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapPayments() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  /// Navigates to the registrationSubmitScreen when the action is triggered.
  onTapRegistration() {
    Get.toNamed(
      AppRoutes.registrationSubmitScreen,
    );
  }
}
