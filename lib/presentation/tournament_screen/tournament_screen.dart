import 'controller/tournament_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/core/utils/validation_functions.dart';
import 'package:ludo_king_clone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ludo_king_clone/widgets/app_bar/appbar_title.dart';
import 'package:ludo_king_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:ludo_king_clone/widgets/custom_elevated_button.dart';
import 'package:ludo_king_clone/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TournamentScreen extends GetWidget<TournamentController> {
  TournamentScreen({Key? key}) : super(key: key);

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
                                horizontal: 17.h, vertical: 33.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _buildUserNameRow(),
                                  SizedBox(height: 23.v),
                                  _buildPasswordRow(),
                                  SizedBox(height: 40.v),
                                  CustomElevatedButton(
                                      width: 94.h,
                                      text: "lbl_login".tr,
                                      margin: EdgeInsets.only(right: 107.h),
                                      buttonStyle:
                                          CustomButtonStyles.fillLightBlue,
                                      onPressed: () {
                                        onTapLogin();
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 52.v,
        leadingWidth: 45.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgGroup11,
            margin: EdgeInsets.only(left: 13.h, top: 12.v, bottom: 12.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_tournaments2".tr));
  }

  /// Section Widget
  Widget _buildUserNameRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 6.v),
              child:
                  Text("msg_username".tr, style: theme.textTheme.bodyMedium)),
          CustomTextFormField(
              width: 200.h,
              controller: controller.userNameController,
              hintText: "lbl_username".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildPasswordRow() {
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
              CustomTextFormField(
                  width: 200.h,
                  controller: controller.passwordController,
                  hintText: "lbl_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true)
            ]));
  }

  /// Navigates to the tournamentTwoScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.tournamentTwoScreen,
    );
  }
}
