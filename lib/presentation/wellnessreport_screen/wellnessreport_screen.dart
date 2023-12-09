import 'controller/wellnessreport_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';

class WellnessreportScreen extends GetWidget<WellnessreportController> {
  const WellnessreportScreen({Key? key}) : super(key: key);

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
                    padding:
                        EdgeInsets.only(left: 30.h, top: 30.v, right: 30.h),
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: _buildSkinTempContainer(
                              skinTemperatureText: "lbl_blood_pressure".tr,
                              threeHundredFortySevenText: "lbl_120_80".tr)),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: _buildSkinTempContainer(
                              skinTemperatureText: "msg_skin_temperature".tr,
                              threeHundredFortySevenText: "lbl_34_7".tr)),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: _buildSkinTempContainer(
                              skinTemperatureText: "msg_motion_rotation".tr,
                              threeHundredFortySevenText: "lbl_stationary".tr)),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: _buildSkinTempContainer(
                              skinTemperatureText: "msg_resting_heart_rate".tr,
                              threeHundredFortySevenText: "lbl_60_bpm".tr)),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: _buildSkinTempContainer(
                              skinTemperatureText: "lbl_blood_oxygen".tr,
                              threeHundredFortySevenText: "lbl_98".tr)),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: _buildSkinTempContainer(
                              skinTemperatureText: "msg_humidity_dallas".tr,
                              threeHundredFortySevenText: "lbl_60".tr)),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                          height: 50.v,
                          text: "lbl_download_pdf".tr,
                          margin: EdgeInsets.only(right: 6.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 5.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgDownloadicon,
                                  height: 22.adaptSize,
                                  width: 22.adaptSize))),
                      SizedBox(height: 80.v),
                      _buildBottomNavBar(),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_wellness_report".tr,
            margin: EdgeInsets.only(left: 6.h)));
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        welbotbartoHome();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgHomeicon,
                                height: 22.v,
                                width: 24.h),
                            SizedBox(height: 7.v),
                            Text("lbl_home".tr,
                                style: theme.textTheme.labelLarge)
                          ]))),
                  GestureDetector(
                      onTap: () {
                        welbotbarNotif();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
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
                        welbotbarProfile();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgProfileicon,
                                height: 24.v,
                                width: 22.h),
                            SizedBox(height: 6.v),
                            Text("lbl_profile".tr,
                                style: theme.textTheme.bodySmall)
                          ]))),
                  GestureDetector(
                      onTap: () {
                        welbotbarSetting();
                      },
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSupporticon,
                            height: 24.v,
                            width: 23.h),
                        SizedBox(height: 7.v),
                        Text("lbl_support".tr, style: theme.textTheme.bodySmall)
                      ])),
                  GestureDetector(
                      onTap: () {
                        tosettingswel();
                      },
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSearchGray700,
                            height: 24.v,
                            width: 23.h),
                        SizedBox(height: 7.v),
                        Text("lbl_settings".tr,
                            style: theme.textTheme.bodySmall)
                      ]))
                ])));
  }

  /// Common widget
  Widget _buildSkinTempContainer({
    required String skinTemperatureText,
    required String threeHundredFortySevenText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 80.h, vertical: 7.v),
        decoration: AppDecoration.outlineOnPrimary3
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Text(skinTemperatureText,
                  style: theme.textTheme.titleLarge!
                      .copyWith(color: appTheme.gray700)),
              Padding(
                  padding: EdgeInsets.only(left: 46.h),
                  child: Text(threeHundredFortySevenText,
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: appTheme.gray700)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  welbotbartoHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  welbotbarNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  welbotbarProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  welbotbarSetting() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  tosettingswel() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
