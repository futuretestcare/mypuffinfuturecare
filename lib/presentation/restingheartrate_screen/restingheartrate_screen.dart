import 'controller/restingheartrate_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';

class RestingheartrateScreen extends GetWidget<RestingheartrateController> {
  const RestingheartrateScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(top: 56.v),
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
                        image:
                            AssetImage(ImageConstant.imgTrafficlighthomescreen),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.fromLTRB(19.h, 19.v, 19.h, 9.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildFiftyFive(),
                          SizedBox(height: 33.v),
                          _buildFiftyFour(),
                          SizedBox(height: 16.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowDown,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 5.v, bottom: 13.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("lbl_today".tr,
                                            style:
                                                theme.textTheme.headlineLarge))
                                  ])),
                          SizedBox(height: 3.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgExamplegraph,
                              height: 218.v,
                              width: 347.h),
                          SizedBox(height: 30.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowDown,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 5.v, bottom: 13.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: Text("lbl_yesterday".tr,
                                            style:
                                                theme.textTheme.headlineLarge))
                                  ])),
                          SizedBox(height: 10.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowDown,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(
                                        top: 10.v, bottom: 8.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("lbl_october_31".tr,
                                        style: theme.textTheme.headlineLarge))
                              ])),
                          SizedBox(height: 90.v),
                          _buildBottomNavBar(),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 35.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 27.h, top: 15.v, bottom: 23.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_resting_heart_rate2".tr));
  }

  /// Section Widget
  Widget _buildFiftyFive() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 102.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.h, vertical: 1.v),
                  decoration: AppDecoration.outlineOnPrimary4
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Text("lbl_daily".tr,
                      style: CustomTextStyles.titleLargeWhiteA700)),
              Container(
                  width: 102.h,
                  margin: EdgeInsets.only(left: 10.h, bottom: 1.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 1.v),
                  decoration: AppDecoration.outlineOnPrimary5
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Text("lbl_weekly".tr,
                      style: CustomTextStyles.titleLargeWhiteA700)),
              Container(
                  width: 102.h,
                  margin: EdgeInsets.only(left: 10.h, bottom: 1.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 1.v),
                  decoration: AppDecoration.outlineOnPrimary5
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Text("lbl_monthly".tr,
                      style: CustomTextStyles.titleLargeWhiteA700))
            ])));
  }

  /// Section Widget
  Widget _buildFiftyFour() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: _buildMinHeartRate(
                      dynamicText: "lbl_avg".tr, dynamicText1: "lbl_62".tr)),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildMinHeartRate(
                      dynamicText: "lbl_min2".tr, dynamicText1: "lbl_59".tr)),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: _buildMinHeartRate(
                      dynamicText: "lbl_max".tr, dynamicText1: "lbl_120".tr))
            ])));
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 11.h, right: 24.h),
            child: Row(children: [
              GestureDetector(
                  onTap: () {
                    heartToHome();
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
                    heartToNotif();
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
                    heartToProfile();
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
                    heartToSupport();
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
                    heartToSettings();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSearchGray700,
                            height: 24.v,
                            width: 23.h),
                        SizedBox(height: 7.v),
                        Text("lbl_settings".tr,
                            style: theme.textTheme.bodySmall)
                      ])))
            ])));
  }

  /// Common widget
  Widget _buildMinHeartRate({
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 10.v),
                decoration: AppDecoration.outlineOnPrimary4
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text(dynamicText,
                      style: CustomTextStyles.titleLargeWhiteA700
                          .copyWith(color: appTheme.whiteA700)),
                  SizedBox(height: 3.v),
                  Text(dynamicText1,
                      style: CustomTextStyles.titleLargeWhiteA700
                          .copyWith(color: appTheme.whiteA700))
                ]))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  heartToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  heartToNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  heartToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  heartToSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  heartToSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
