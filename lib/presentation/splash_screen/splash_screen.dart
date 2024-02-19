import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgLudoKingPlay,
                          height: 186.v,
                          width: 200.h),
                      SizedBox(height: 1.v),
                      Text("msg_powered_by_ludu".tr,
                          style: CustomTextStyles.bodyLargePrimary)
                    ]))));
  }
}
