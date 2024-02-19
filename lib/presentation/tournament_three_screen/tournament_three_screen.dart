import '../tournament_three_screen/widgets/sixtythree_item_widget.dart';
import 'controller/tournament_three_controller.dart';
import 'models/sixtythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_elevated_button.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';
import 'package:ludo_king_clone/widgets/custom_outlined_button.dart';

class TournamentThreeScreen extends GetWidget<TournamentThreeController> {
  const TournamentThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildAndroidLarge(),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: CustomIconButton(
                                    height: 28.v,
                                    width: 32.h,
                                    padding: EdgeInsets.all(4.h),
                                    onTap: () {
                                      onTapBtnIconButton();
                                    },
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup11))),
                            CustomElevatedButton(
                                width: 94.h,
                                text: "lbl_join".tr,
                                margin: EdgeInsets.only(left: 62.h),
                                buttonStyle: CustomButtonStyles.outlineTealE,
                                onPressed: () {
                                  onTapJoin();
                                })
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_first_round2".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOutlinedButton(
                        height: 29.v,
                        width: 93.h,
                        text: "lbl_level_1".tr,
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
                        buttonTextStyle:
                            CustomTextStyles.labelLargeOnPrimaryContainer13),
                    Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: appTheme.indigo900,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: theme.colorScheme.primary, width: 3.h),
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Container(
                            height: 29.v,
                            width: 93.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.h, vertical: 1.v),
                            decoration: AppDecoration.outlinePrimary7.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Text("lbl_level_2".tr,
                                      style: theme.textTheme.titleSmall)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgLock2,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(right: 15.h))
                            ])))
                  ])),
          SizedBox(height: 11.v),
          Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Obx(() => GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 30.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 37.h,
                      crossAxisSpacing: 37.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.tournamentThreeModelObj.value
                      .sixtythreeItemList.value.length,
                  itemBuilder: (context, index) {
                    SixtythreeItemModel model = controller
                        .tournamentThreeModelObj
                        .value
                        .sixtythreeItemList
                        .value[index];
                    return SixtythreeItemWidget(model);
                  }))),
          SizedBox(height: 11.v)
        ]));
  }

  /// Navigates to the tournamentTwoScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.tournamentTwoScreen,
    );
  }

  /// Navigates to the tournamentFiveScreen when the action is triggered.
  onTapJoin() {
    Get.toNamed(
      AppRoutes.tournamentFiveScreen,
    );
  }
}
