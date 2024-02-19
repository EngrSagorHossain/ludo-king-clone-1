import 'controller/exit_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class ExitScreen extends GetWidget<ExitController> {
  const ExitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 35.h, top: 237.v, right: 35.h),
                child: Column(
                    children: [SizedBox(height: 5.v), _buildAndroidLarge()]))));
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 8.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 62.h),
                  child: Text("lbl_exit".tr,
                      style: theme.textTheme.headlineSmall)),
              SizedBox(height: 43.v),
              Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomOutlinedButton(
                            height: 28.v,
                            width: 55.h,
                            text: "lbl_yes".tr,
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
              SizedBox(height: 38.v)
            ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapNo() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
