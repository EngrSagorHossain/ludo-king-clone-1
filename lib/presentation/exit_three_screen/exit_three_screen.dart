import 'controller/exit_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class ExitThreeScreen extends GetWidget<ExitThreeController> {
  const ExitThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 35.h, top: 246.v, right: 35.h),
                child: Column(
                    children: [SizedBox(height: 5.v), _buildAndroidLarge()]))));
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 8.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 27.h),
                  child: Text("lbl_quit_game".tr,
                      style: theme.textTheme.headlineSmall)),
              SizedBox(height: 54.v),
              Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomOutlinedButton(
                            height: 28.v,
                            width: 55.h,
                            text: "lbl_yes".tr,
                            margin: EdgeInsets.only(bottom: 1.v),
                            buttonTextStyle: theme.textTheme.titleSmall!),
                        CustomOutlinedButton(
                            height: 28.v,
                            width: 55.h,
                            text: "lbl_no".tr,
                            buttonTextStyle: theme.textTheme.titleSmall!,
                            onPressed: () {
                              onTapNo();
                            })
                      ])),
              SizedBox(height: 44.v)
            ]));
  }

  /// Navigates to the computerGameScreen when the action is triggered.
  onTapNo() {
    Get.toNamed(
      AppRoutes.computerGameScreen,
    );
  }
}
