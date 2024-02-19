import '../tournament_four_screen/widgets/seventyone_item_widget.dart';
import 'controller/tournament_four_controller.dart';
import 'models/seventyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_elevated_button.dart';

class TournamentFourScreen extends GetWidget<TournamentFourController> {
  const TournamentFourScreen({Key? key}) : super(key: key);

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
                      _buildAndroidLargeColumn(),
                      SizedBox(height: 28.v),
                      Row(children: [
                        GestureDetector(
                            onTap: () {
                              onTapForty();
                            },
                            child: Container(
                                height: 28.v,
                                width: 32.h,
                                margin: EdgeInsets.only(bottom: 4.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.h, vertical: 2.v),
                                decoration: AppDecoration.outlinePrimary8
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup11,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    alignment: Alignment.centerLeft))),
                        CustomElevatedButton(
                            width: 94.h,
                            text: "lbl_join".tr,
                            margin: EdgeInsets.only(left: 66.h),
                            buttonStyle: CustomButtonStyles.outlineTealE,
                            onPressed: () {
                              onTapJoin();
                            })
                      ]),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildAndroidLargeColumn() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_final_round2".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 18.v),
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
                  itemCount: controller.tournamentFourModelObj.value
                      .seventyoneItemList.value.length,
                  itemBuilder: (context, index) {
                    SeventyoneItemModel model = controller
                        .tournamentFourModelObj
                        .value
                        .seventyoneItemList
                        .value[index];
                    return SeventyoneItemWidget(model);
                  }))),
          SizedBox(height: 11.v)
        ]));
  }

  /// Navigates to the tournamentTwoScreen when the action is triggered.
  onTapForty() {
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
