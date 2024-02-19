import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/widgets/custom_icon_button.dart';

import 'controller/home_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFrameOne(),
                  SizedBox(height: 11.v),
                  _buildCrownEleven(),
                  SizedBox(height: 28.v),
                  Padding(
                      padding: EdgeInsets.only(left: 42.h, right: 38.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildGamingConsoleOne(
                                smartphoneImage:
                                    ImageConstant.imgGamingConsole1,
                                tournamentsText: "lbl_registration".tr,
                                onTapGamingConsoleOne: () {
                                  onTapGamingConsoleOne();
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 34.h),
                                child: _buildGamingConsoleOne(
                                    smartphoneImage:
                                        ImageConstant.imgSmartphone21,
                                    tournamentsText: "lbl_tournaments".tr,
                                    onTapGamingConsoleOne: () {
                                      onTapGamingConsoleOne1();
                                    }))
                          ])),
                  SizedBox(height: 31.v),
                  Padding(
                      padding: EdgeInsets.only(left: 42.h, right: 38.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapREGISTRATION();
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5.h, vertical: 7.v),
                                    decoration: AppDecoration
                                        .outlineOnPrimaryContainer
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              height: 47.v,
                                              width: 110.h,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 13.v),
                                                            child: Text(
                                                                "lbl_registration"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyMediumRacingSansOne))),
                                                    Align(
                                                        alignment: Alignment
                                                            .center,
                                                        child: Container(
                                                            height: 47.v,
                                                            width: 110.h,
                                                            padding:
                                                                EdgeInsets.symmetric(
                                                                    horizontal: 37
                                                                        .h,
                                                                    vertical:
                                                                        6.v),
                                                            decoration: AppDecoration
                                                                .fillIndigo
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .customBorderTL10),
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgComputer1,
                                                                height: 30
                                                                    .adaptSize,
                                                                width: 30
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .bottomRight)))
                                                  ])),
                                          SizedBox(height: 11.v),
                                          Text("lbl_computer".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumRacingSansOne),
                                          SizedBox(height: 2.v)
                                        ]))),
                            GestureDetector(
                                onTap: () {
                                  onTapTOURNAMENT();
                                },
                                child: Container(
                                    margin: EdgeInsets.only(left: 34.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5.h, vertical: 7.v),
                                    decoration: AppDecoration
                                        .outlineOnPrimaryContainer
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              height: 47.v,
                                              width: 110.h,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 13.v),
                                                            child: Text(
                                                                "lbl_tournament"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyMediumRacingSansOne))),
                                                    Align(
                                                        alignment: Alignment
                                                            .center,
                                                        child: Container(
                                                            height: 47.v,
                                                            width: 110.h,
                                                            padding:
                                                                EdgeInsets.symmetric(
                                                                    horizontal: 36
                                                                        .h,
                                                                    vertical:
                                                                        2.v),
                                                            decoration: AppDecoration
                                                                .fillIndigo
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .customBorderTL10),
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPeoplePlaying,
                                                                height: 37
                                                                    .adaptSize,
                                                                width: 37
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .topCenter)))
                                                  ])),
                                          SizedBox(height: 9.v),
                                          Text("lbl_pass_n_play".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumRacingSansOne),
                                          SizedBox(height: 4.v)
                                        ])))
                          ])),
                  SizedBox(height: 18.v),
                  Padding(
                      padding: EdgeInsets.only(left: 42.h, right: 38.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 55.v,
                                width: 60.h,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                decoration: AppDecoration.outlinePrimary8
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSnakeRemovebgPreview,
                                    height: 44.v,
                                    width: 55.h,
                                    alignment: Alignment.topCenter)),
                            Spacer(),
                            Container(
                                height: 35.v,
                                width: 102.h,
                                margin: EdgeInsets.only(top: 13.v, bottom: 7.v),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              height: 35.v,
                                              width: 56.h,
                                              margin:
                                                  EdgeInsets.only(left: 20.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.h),
                                              decoration: AppDecoration
                                                  .outlinePrimary8
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCrown11,
                                                  height: 17.v,
                                                  width: 25.h,
                                                  alignment:
                                                      Alignment.bottomRight))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 2.v),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topRight,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Text(
                                                                  "lbl_t".tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumRacingSansOnePrimary)),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Text(
                                                                  "lbl_o".tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumRacingSansOnePrimary))
                                                        ])),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.v),
                                                    child: Text("lbl_u".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumRacingSansOnePrimary)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 4.v),
                                                    child: Text("lbl_r".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumRacingSansOnePrimary)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h, bottom: 4.v),
                                                    child: Text("lbl_n".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumRacingSansOnePrimary)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 4.v),
                                                    child: Text("lbl_a".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumRacingSansOnePrimary)),
                                                Container(
                                                    height: 19.v,
                                                    width: 20.h,
                                                    margin: EdgeInsets.only(
                                                        left: 1.h, bottom: 3.v),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Text(
                                                                  "lbl_m".tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumRacingSansOnePrimary)),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: Text(
                                                                  "lbl_e".tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumRacingSansOnePrimary))
                                                        ])),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 3.v, bottom: 2.v),
                                                    child: Text("lbl_n".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumRacingSansOnePrimary)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 5.v),
                                                    child: Text("lbl_t".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumRacingSansOnePrimary))
                                              ]))
                                    ])),
                            Container(
                                height: 55.v,
                                width: 60.h,
                                margin: EdgeInsets.only(left: 24.h),
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                decoration: AppDecoration.outlinePrimary8
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSnakeRemovebgPreview,
                                    height: 44.v,
                                    width: 55.h,
                                    alignment: Alignment.topCenter))
                          ])),
                  SizedBox(height: 21.v),
                  SizedBox(
                      height: 72.v,
                      width: 157.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                margin: EdgeInsets.only(left: 12.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 17.h, vertical: 7.v),
                                decoration: AppDecoration
                                    .outlineOnPrimaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.v),
                                      Text("lbl_claim".tr,
                                          style: CustomTextStyles
                                              .headlineSmallRacingSansOneLime900e5)
                                    ]))),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgLeftIcon1RemovebgPreview,
                            height: 72.v,
                            width: 58.h,
                            alignment: Alignment.centerLeft)
                      ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildPayPerClickOne()));
  }

  /// Section Widget
  Widget _buildFrameOne() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 2.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup317),
                fit: BoxFit.cover)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 45.v,
                  width: 36.h,
                  margin: EdgeInsets.only(top: 3.v, bottom: 2.v),
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: () {
                              onTapFrameOne();
                            },
                            child: Container(
                                height: 35.v,
                                width: 30.h,
                                margin: EdgeInsets.only(top: 3.v, right: 2.h),
                                decoration: AppDecoration.outlinePrimary4
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgUnnamed2,
                                    height: 33.v,
                                    width: 28.h,
                                    alignment: Alignment.center)))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgStar12,
                                      height: 8.adaptSize,
                                      width: 8.adaptSize,
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 3.h),
                                          child: Text("lbl_1".tr,
                                              style: CustomTextStyles
                                                  .robotoBlack900)))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("lbl_guest8364".tr,
                            style: CustomTextStyles
                                .robotoOnPrimaryContainerSemiBold)),
                    CustomImageView(
                        imagePath: ImageConstant.imgButton2,
                        height: 5.v,
                        width: 6.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 1.v))
                  ])),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 20.h, bottom: 2.v),
                      child: Column(children: [
                        Container(
                            width: 290.h,
                            margin: EdgeInsets.only(right: 2.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCoin1,
                                      height: 9.adaptSize,
                                      width: 9.adaptSize,
                                      margin: EdgeInsets.only(bottom: 27.v)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.h, bottom: 25.v),
                                      child: Text("lbl_4_4502".tr,
                                          style: theme.textTheme.labelMedium)),
                                  Spacer(flex: 48),
                                  Container(
                                      height: 12.v,
                                      width: 14.h,
                                      margin: EdgeInsets.only(bottom: 25.v),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.h, vertical: 1.v),
                                      decoration: AppDecoration.outlinePrimary4
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder3),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgShoppingCart1,
                                          height: 8.adaptSize,
                                          width: 8.adaptSize,
                                          alignment: Alignment.centerLeft)),
                                  Spacer(flex: 51),
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 25.v),
                                      child: Text("lbl_503".tr,
                                          style: theme.textTheme.labelMedium)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgDiamond23,
                                      height: 9.adaptSize,
                                      width: 9.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 3.h, bottom: 27.v)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgOk,
                                      height: 29.v,
                                      width: 30.h,
                                      margin:
                                          EdgeInsets.only(left: 20.h, top: 8.v))
                                ])),
                        SizedBox(height: 1.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("lbl_inventory".tr,
                                style: CustomTextStyles.robotoAmber600))
                      ])))
            ]));
  }

  /// Section Widget
  Widget _buildCrownEleven() {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 4.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 31.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.outlinePrimaryTL7,
                            alignment: Alignment.center,
                            onTap: () {
                              onTapBtnIconButton();
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgFrame3)),
                        SizedBox(height: 18.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgCrown11,
                            height: 25.adaptSize,
                            width: 25.adaptSize),
                        SizedBox(height: 19.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgYoutube11,
                            height: 25.adaptSize,
                            width: 25.adaptSize),
                        SizedBox(height: 18.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgSilly1,
                            height: 25.adaptSize,
                            width: 25.adaptSize)
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgLudoKingPlay,
                  height: 158.v,
                  width: 170.h,
                  margin: EdgeInsets.only(top: 31.v)),
              Padding(
                  padding: EdgeInsets.only(bottom: 70.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame4Primary,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(7.h),
                        onTap: () {
                          onTapImgImage();
                        }),
                    SizedBox(height: 18.v),
                    CustomIconButton(
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        decoration: IconButtonStyleHelper.outlinePrimaryTL7,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFrame428x28)),
                    SizedBox(height: 10.v),
                    Container(
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgVerified1),
                                fit: BoxFit.cover)))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildPayPerClickOne() {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 3.h, bottom: 9.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  height: 78.v,
                  width: 60.h,
                  margin: EdgeInsets.only(bottom: 2.v),
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPayPerClick1,
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        alignment: Alignment.bottomCenter),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_free".tr,
                                style: CustomTextStyles
                                    .titleLargeRacingSansOnePrimary)))
                  ])),
              Spacer(flex: 53),
              Padding(
                  padding: EdgeInsets.only(top: 68.v),
                  child: Text("lbl_v8_0_0_263".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer10)),
              Spacer(flex: 46),
              CustomImageView(
                  imagePath: ImageConstant.imgFortuneWheel1,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  margin: EdgeInsets.only(top: 8.v, bottom: 2.v))
            ]));
  }

  /// Common widget
  Widget _buildGamingConsoleOne({
    required String smartphoneImage,
    required String tournamentsText,
    Function? onTapGamingConsoleOne,
  }) {
    return GestureDetector(
        onTap: () {
          onTapGamingConsoleOne!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.v),
            decoration: AppDecoration.outlineOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  height: 47.v,
                  width: 110.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 36.h, vertical: 6.v),
                  decoration: AppDecoration.fillIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL10),
                  child: CustomImageView(
                      imagePath: smartphoneImage,
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      alignment: Alignment.centerRight)),
              SizedBox(height: 10.v),
              Text(tournamentsText,
                  style: CustomTextStyles.bodyMediumRacingSansOne
                      .copyWith(color: theme.colorScheme.onPrimaryContainer)),
              SizedBox(height: 5.v)
            ])));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapFrameOne() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the exitScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.exitScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  /// Navigates to the paymentsOrRegistrationScreen when the action is triggered.
  onTapGamingConsoleOne() {
    Get.toNamed(
      AppRoutes.paymentsOrRegistrationScreen,
    );
  }

  /// Navigates to the tournamentScreen when the action is triggered.
  onTapGamingConsoleOne1() {
    Get.toNamed(
      AppRoutes.tournamentScreen,
    );
  }

  /// Navigates to the computerScreen when the action is triggered.
  onTapREGISTRATION() {
    Get.toNamed(
      AppRoutes.computerScreen,
    );
  }

  /// Navigates to the passNPlayScreen when the action is triggered.
  onTapTOURNAMENT() {
    Get.toNamed(
      AppRoutes.passNPlayScreen,
    );
  }
}
