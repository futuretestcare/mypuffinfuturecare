import 'controller/accountsettings_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';

class AccountsettingsScreen extends GetWidget<AccountsettingsController> {
  const AccountsettingsScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 27.h, vertical: 21.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                acctsettingToChangeLogin();
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSearchPrimary,
                                        height: 27.adaptSize,
                                        width: 27.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 34.h, top: 4.v),
                                        child: Text(
                                            "msg_change_log_in_details".tr,
                                            style: theme.textTheme.bodyLarge))
                                  ]))),
                          SizedBox(height: 18.v),
                          Divider(),
                          SizedBox(height: 16.v),
                          Padding(
                              padding: EdgeInsets.only(left: 15.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgDeleteaccounticon,
                                    height: 29.adaptSize,
                                    width: 29.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 33.h, top: 3.v, bottom: 3.v),
                                    child: Text("lbl_delete_account".tr,
                                        style: theme.textTheme.bodyLarge))
                              ])),
                          Spacer(),
                          SizedBox(height: 5.v),
                          _buildBottomNavBar()
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
        title: AppbarTitle(
            text: "msg_account_settings".tr,
            margin: EdgeInsets.only(left: 14.h)));
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                actsetToHome();
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
                acctsetbotbarNotif();
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
                acctsetbotbarProfiel();
              },
              child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
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
                acctsetbotbarSupport();
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
                acctsetbotbarToSettings();
              },
              child: Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgSearchGray700,
                    height: 24.v,
                    width: 23.h),
                SizedBox(height: 7.v),
                Text("lbl_settings".tr, style: theme.textTheme.bodySmall)
              ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the changelogindetailsScreen when the action is triggered.
  acctsettingToChangeLogin() {
    Get.toNamed(
      AppRoutes.changelogindetailsScreen,
    );
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  actsetToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  acctsetbotbarNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  acctsetbotbarProfiel() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  acctsetbotbarSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  acctsetbotbarToSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
