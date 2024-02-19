import '../controller/tournament_four_controller.dart';
import '../models/seventyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';

// ignore: must_be_immutable
class SeventyoneItemWidget extends StatelessWidget {
  SeventyoneItemWidget(
    this.seventyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventyoneItemModel seventyoneItemModelObj;

  var controller = Get.find<TournamentFourController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.indigo900,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 3.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 29.v,
        width: 93.h,
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.outlinePrimary7.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Obx(
                () => Text(
                  seventyoneItemModelObj.level1Text!.value,
                  style: CustomTextStyles.labelLargeOnPrimaryContainer13,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgLock2,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 8.h),
            ),
          ],
        ),
      ),
    );
  }
}
