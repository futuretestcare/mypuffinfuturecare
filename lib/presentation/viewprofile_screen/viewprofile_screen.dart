import 'controller/viewprofile_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';

class ViewprofileScreen extends GetWidget<ViewprofileController> {
  const ViewprofileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
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
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 21.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Text("lbl_profile".tr,
                                  style: theme.textTheme.headlineLarge))),
                      SizedBox(height: 18.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgExampleprofileicon,
                          height: 112.adaptSize,
                          width: 112.adaptSize),
                      SizedBox(height: 24.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_john_doe".tr,
                                style: theme.textTheme.headlineLarge),
                            CustomImageView(
                                imagePath: ImageConstant.imgEditicon,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 14.h, top: 12.v, bottom: 10.v))
                          ]),
                      SizedBox(height: 39.v),
                      _buildNinetyOne(),
                      SizedBox(height: 14.v),
                      _buildTwentySevenApril1951Button(),
                      SizedBox(height: 13.v),
                      _buildNinetyTwo(),
                      SizedBox(height: 15.v),
                      _buildJohnDoeEmailButton(),
                      SizedBox(height: 16.v),
                      _buildHighRiskHeartButton(),
                      SizedBox(height: 96.v),
                      _buildBottomNavBar()
                    ])))));
  }

  /// Section Widget
  Widget _buildNinetyOneButton() {
    return CustomElevatedButton(
        height: 51.v, width: 170.h, text: "lbl_72_years_old".tr);
  }

  /// Section Widget
  Widget _buildNinetyOneMaleButton() {
    return CustomElevatedButton(
        height: 51.v, width: 174.h, text: "lbl_male".tr);
  }

  /// Section Widget
  Widget _buildNinetyOne() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildNinetyOneButton(), _buildNinetyOneMaleButton()]));
  }

  /// Section Widget
  Widget _buildTwentySevenApril1951Button() {
    return CustomElevatedButton(height: 46.v, text: "lbl_27_april_1951".tr);
  }

  /// Section Widget
  Widget _buildNinetyTwoButton() {
    return CustomElevatedButton(
        height: 51.v, width: 173.h, text: "lbl_1_8_meters".tr);
  }

  /// Section Widget
  Widget _buildNinetyTwoWeightButton() {
    return CustomElevatedButton(
        height: 51.v, width: 174.h, text: "lbl_95_kg".tr);
  }

  /// Section Widget
  Widget _buildNinetyTwo() {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNinetyTwoButton(),
              _buildNinetyTwoWeightButton()
            ]));
  }

  /// Section Widget
  Widget _buildJohnDoeEmailButton() {
    return CustomElevatedButton(
        height: 46.v, text: "msg_johndoe2002_gmail_com".tr);
  }

  /// Section Widget
  Widget _buildHighRiskHeartButton() {
    return CustomElevatedButton(height: 46.v, text: "msg_high_risk_heart".tr);
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h, right: 27.h),
            child: Row(children: [
              GestureDetector(
                  onTap: () {
                    profileToHome();
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
                    profileToNotif();
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
              Padding(
                  padding: EdgeInsets.only(left: 20.h, bottom: 1.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgProfileicon,
                        height: 24.v,
                        width: 22.h),
                    SizedBox(height: 6.v),
                    Text("lbl_profile".tr, style: theme.textTheme.bodySmall)
                  ])),
              GestureDetector(
                  onTap: () {
                    toSupport();
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
                    profiletoSetting();
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

  /// Navigates to the homescreenScreen when the action is triggered.
  profileToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  profileToNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  toSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  profiletoSetting() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
