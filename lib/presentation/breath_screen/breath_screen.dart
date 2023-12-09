import 'controller/breath_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';

class BreathScreen extends GetWidget<BreathController> {
  const BreathScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 84.v),
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    boxShadow: [
                      BoxShadow(
                          color: theme.colorScheme.onSecondaryContainer,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(0, 3))
                    ],
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup172),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 27.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      _buildBreathStack(),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.h, vertical: 14.v),
                          child: _buildBreathStack1()),
                      SizedBox(height: 50.v),
                      _buildBottomNavBar(),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 106.v,
        leadingWidth: 35.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 27.h, top: 13.v, bottom: 53.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: Container(
            height: 84.23999.v,
            width: 206.59.h,
            margin: EdgeInsets.only(left: 14.h),
            child: Stack(alignment: Alignment.bottomRight, children: [
              AppbarTitle(
                  text: "lbl_breath".tr,
                  margin: EdgeInsets.only(right: 104.h, bottom: 41.v)),
              AppbarTitle(
                  text: "lbl_today2".tr,
                  margin: EdgeInsets.only(left: 101.h, top: 41.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgArrowLeftOnprimary12x17,
                  margin: EdgeInsets.fromLTRB(20.h, 57.v, 169.h, 14.v))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLongrightarrowicon,
              margin: EdgeInsets.fromLTRB(56.h, 57.v, 60.h, 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildBreathStack() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: _buildBreathRate(
                  breathRateLabel: "lbl_breath_rate".tr,
                  fourteenLabel: "lbl_14".tr,
                  bpmLabel: "lbl_bpm2".tr)),
          SizedBox(height: 14.v),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: _buildOxySaturation(
                  oxygenSaturationText: "msg_oxygen_saturation".tr,
                  ninetyEightText: "lbl_982".tr,
                  text: "lbl".tr)),
          SizedBox(height: 13.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildHumidity(
                  humidityDallasText: "msg_humidity_dallas".tr,
                  seventySixText: "lbl_76".tr,
                  text: "lbl".tr))
        ]));
  }

  /// Section Widget
  Widget _buildBreathStack1() {
    return Container(
        height: 4.v,
        width: 353.h,
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 139.v,
                  width: 352.h,
                  margin: EdgeInsets.only(right: 1.h),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin: EdgeInsets.only(bottom: 7.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.h, vertical: 1.v),
                            decoration: AppDecoration.outlineOnPrimary4
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 86.v),
                                      child: Text("lbl_breath_rate".tr,
                                          style: CustomTextStyles
                                              .headlineLargeWhiteA700)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgInfoicon,
                                      height: 13.adaptSize,
                                      width: 13.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 5.h, top: 16.v, bottom: 99.v))
                                ]))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 43.h),
                            child: Row(children: [
                              Text("lbl_14".tr,
                                  style: CustomTextStyles.exoLightgreenA700),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 31.v, bottom: 11.v),
                                  child: Text("lbl_bpm2".tr,
                                      style: theme.textTheme.displayMedium))
                            ])))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 145.v,
                  width: 352.h,
                  margin: EdgeInsets.only(top: 153.v, right: 1.h),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin: EdgeInsets.only(bottom: 7.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 11.h, vertical: 5.v),
                            decoration: AppDecoration.outlineOnPrimary4
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 84.v),
                                      child: Text("msg_oxygen_saturation".tr,
                                          style: CustomTextStyles
                                              .headlineLargeWhiteA700)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgInfoicon,
                                      height: 13.adaptSize,
                                      width: 13.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 4.h, top: 12.v, bottom: 101.v))
                                ]))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 38.h),
                            child: Row(children: [
                              Text("lbl_982".tr,
                                  style: CustomTextStyles.exoLightgreenA700),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("lbl".tr,
                                      style: CustomTextStyles.exoWhiteA700))
                            ])))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 136.v,
                  width: 352.h,
                  margin: EdgeInsets.only(left: 1.h, top: 311.v),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin: EdgeInsets.only(bottom: 4.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 9.h, vertical: 3.v),
                            decoration: AppDecoration.outlineOnPrimary4
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 84.v),
                                      child: Text("msg_humidity_dallas".tr,
                                          style: CustomTextStyles
                                              .headlineLargeWhiteA70030)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgInfoicon,
                                      height: 13.adaptSize,
                                      width: 13.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 3.h, top: 13.v, bottom: 98.v))
                                ]))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 33.h),
                            child: Row(children: [
                              Text("lbl_76".tr,
                                  style: CustomTextStyles.exoYellow800),
                              Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("lbl".tr,
                                      style: CustomTextStyles.exoWhiteA700))
                            ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 25.h),
        child: Row(children: [
          GestureDetector(
              onTap: () {
                breathtoHome();
              },
              child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgHomeicon,
                        height: 22.v,
                        width: 24.h),
                    SizedBox(height: 7.v),
                    Text("lbl_home".tr, style: theme.textTheme.labelLarge)
                  ]))),
          GestureDetector(
              onTap: () {
                breathtoNotif();
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 21.h, bottom: 1.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgNotificationicon,
                        height: 24.v,
                        width: 21.h),
                    SizedBox(height: 6.v),
                    Text("lbl_notifications".tr,
                        style: theme.textTheme.bodySmall)
                  ]))),
          GestureDetector(
              onTap: () {
                breatheToProfile();
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, bottom: 1.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgProfileicon,
                        height: 24.v,
                        width: 22.h),
                    SizedBox(height: 6.v),
                    Text("lbl_profile".tr, style: theme.textTheme.bodySmall)
                  ]))),
          GestureDetector(
              onTap: () {
                breathToSupport();
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSupporticon,
                        height: 24.v,
                        width: 23.h),
                    SizedBox(height: 7.v),
                    Text("lbl_support".tr, style: theme.textTheme.bodySmall)
                  ]))),
          GestureDetector(
              onTap: () {
                breathToSettings();
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSearchGray700,
                        height: 24.v,
                        width: 23.h),
                    SizedBox(height: 7.v),
                    Text("lbl_settings".tr, style: theme.textTheme.bodySmall)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildBreathRate({
    required String breathRateLabel,
    required String fourteenLabel,
    required String bpmLabel,
  }) {
    return SizedBox(
        height: 139.v,
        width: 352.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 7.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 1.v),
                  decoration: AppDecoration.outlineOnPrimary4
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 86.v),
                            child: Text(breathRateLabel,
                                style: CustomTextStyles.headlineLargeWhiteA700
                                    .copyWith(color: appTheme.whiteA700))),
                        CustomImageView(
                            imagePath: ImageConstant.imgInfoicon,
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: EdgeInsets.only(
                                left: 5.h, top: 16.v, bottom: 99.v))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Row(children: [
                    Text(fourteenLabel,
                        style: CustomTextStyles.exoLightgreenA700
                            .copyWith(color: appTheme.lightGreenA700)),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, top: 31.v, bottom: 11.v),
                        child: Text(bpmLabel,
                            style: theme.textTheme.displayMedium!
                                .copyWith(color: appTheme.whiteA700)))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildOxySaturation({
    required String oxygenSaturationText,
    required String ninetyEightText,
    required String text,
  }) {
    return SizedBox(
        height: 145.v,
        width: 352.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 7.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 5.v),
                  decoration: AppDecoration.outlineOnPrimary4
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 84.v),
                            child: Text(oxygenSaturationText,
                                style: CustomTextStyles.headlineLargeWhiteA700
                                    .copyWith(color: appTheme.whiteA700))),
                        CustomImageView(
                            imagePath: ImageConstant.imgInfoicon,
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: EdgeInsets.only(
                                left: 4.h, top: 12.v, bottom: 101.v))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 38.h),
                  child: Row(children: [
                    Text(ninetyEightText,
                        style: CustomTextStyles.exoLightgreenA700
                            .copyWith(color: appTheme.lightGreenA700)),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(text,
                            style: CustomTextStyles.exoWhiteA700
                                .copyWith(color: appTheme.whiteA700)))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildHumidity({
    required String humidityDallasText,
    required String seventySixText,
    required String text,
  }) {
    return SizedBox(
        height: 136.v,
        width: 352.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 4.v),
                  padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 3.v),
                  decoration: AppDecoration.outlineOnPrimary4
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 84.v),
                            child: Text(humidityDallasText,
                                style: CustomTextStyles.headlineLargeWhiteA70030
                                    .copyWith(color: appTheme.whiteA700))),
                        CustomImageView(
                            imagePath: ImageConstant.imgInfoicon,
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: EdgeInsets.only(
                                left: 3.h, top: 13.v, bottom: 98.v))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 33.h),
                  child: Row(children: [
                    Text(seventySixText,
                        style: CustomTextStyles.exoYellow800
                            .copyWith(color: appTheme.yellow800)),
                    Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(text,
                            style: CustomTextStyles.exoWhiteA700
                                .copyWith(color: appTheme.whiteA700)))
                  ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  breathtoHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  breathtoNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  breatheToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  breathToSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  breathToSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
