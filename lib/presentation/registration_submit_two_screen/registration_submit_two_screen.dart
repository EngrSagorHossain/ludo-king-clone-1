import 'controller/registration_submit_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/core/utils/validation_functions.dart';
import 'package:ludo_king_clone/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:ludo_king_clone/widgets/app_bar/appbar_title.dart';
import 'package:ludo_king_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:ludo_king_clone/widgets/custom_elevated_button.dart';
import 'package:ludo_king_clone/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationSubmitTwoScreen
    extends GetWidget<RegistrationSubmitTwoController> {
  RegistrationSubmitTwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 17.h, vertical: 25.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _buildUsername(),
                                  SizedBox(height: 23.v),
                                  _buildPassword(),
                                  SizedBox(height: 23.v),
                                  _buildConfirmPassword(),
                                  Spacer(),
                                  SizedBox(height: 9.v),
                                  _buildSubmitButton()
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgGroup11,
            margin: EdgeInsets.only(left: 18.h, top: 14.v, bottom: 14.v),
            onTap: () {
              onTapIconButton();
            }),
        title: AppbarTitle(
            text: "msg_registration_submit".tr,
            margin: EdgeInsets.only(left: 63.h)));
  }

  /// Section Widget
  Widget _buildUsernameRow() {
    return CustomTextFormField(
        width: 200.h,
        controller: controller.usernameRowController,
        hintText: "lbl_username".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildUsername() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 6.v),
              child:
                  Text("msg_username".tr, style: theme.textTheme.bodyMedium)),
          _buildUsernameRow()
        ]));
  }

  /// Section Widget
  Widget _buildPasswordRow() {
    return CustomTextFormField(
        width: 200.h,
        controller: controller.passwordRowController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 8.v),
                  child: Text("msg_password".tr,
                      style: theme.textTheme.bodyMedium)),
              _buildPasswordRow()
            ]));
  }

  /// Section Widget
  Widget _buildConfirmPasswordRow() {
    return CustomTextFormField(
        width: 200.h,
        controller: controller.confirmPasswordRowController,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmPassword() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
                  child: Text("msg_confirm_pass".tr,
                      style: theme.textTheme.bodyMedium)),
              _buildConfirmPasswordRow()
            ]));
  }

  /// Section Widget
  Widget _buildSubmitButton() {
    return CustomElevatedButton(
        height: 39.v,
        width: 128.h,
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(right: 7.h));
  }

  /// Navigates to the registrationSubmitScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.registrationSubmitScreen,
    );
  }
}
