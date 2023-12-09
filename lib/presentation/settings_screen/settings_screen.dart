import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/custom_search_view.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
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
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 27.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 26.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 25.h),
                              child: Text("lbl_settings".tr,
                                  style: theme.textTheme.headlineLarge))),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 8.h),
                          child: CustomSearchView(
                              controller: controller.searchController,
                              hintText: "lbl_search".tr)),
                      SizedBox(height: 24.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                toAcctSettings();
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSearchPrimary,
                                        height: 27.adaptSize,
                                        width: 27.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 32.h, top: 3.v),
                                        child: Text("msg_account_management".tr,
                                            style:
                                                CustomTextStyles.bodyLargeExo))
                                  ])))),
                      SizedBox(height: 16.v),
                      Divider(endIndent: 7.h),
                      SizedBox(height: 13.v),
                      _buildNotificationSettings(),
                      SizedBox(height: 14.v),
                      _buildDataAndStorage(),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(right: 8.h),
                          child: CustomTextFormField(
                              controller: controller.subscriptionIconController,
                              hintText: "msg_subscription_settings".tr,
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.only(left: 9.h, right: 30.h),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSubscriptionicon,
                                      height: 24.v,
                                      width: 30.h)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 41.v),
                              contentPadding: EdgeInsets.only(
                                  top: 3.v, right: 30.h, bottom: 3.v),
                              borderDecoration: TextFormFieldStyleHelper
                                  .underLineOnPrimaryContainer,
                              filled: false)),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                toTecSupport();
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 9.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSubscriptionicon,
                                        height: 24.v,
                                        width: 30.h),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 28.h, top: 2.v),
                                        child: Text("msg_technical_support".tr,
                                            style: theme.textTheme.bodyLarge))
                                  ])))),
                      SizedBox(height: 15.v),
                      Divider(endIndent: 7.h),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                toSignIn();
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLogouticon,
                                        height: 27.adaptSize,
                                        width: 27.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 32.h, top: 3.v),
                                        child: Text("lbl_logout".tr,
                                            style: theme.textTheme.bodyLarge))
                                  ])))),
                      Spacer(),
                      _buildBottomNavBar()
                    ])))));
  }

  /// Section Widget
  Widget _buildNotificationSettings() {
    return GestureDetector(
        onTap: () {
          toNotifSettings();
        },
        child: Container(
            margin: EdgeInsets.only(right: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgNotifbellicon,
                  height: 27.v,
                  width: 24.h,
                  margin: EdgeInsets.only(bottom: 15.v)),
              Padding(
                  padding: EdgeInsets.fromLTRB(35.h, 5.v, 98.h, 15.v),
                  child: Text("msg_notification_settings".tr,
                      style: TextStyle(
                          color: appTheme.gray700,
                          fontSize: 16.fSize,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400)))
            ])));
  }

  /// Section Widget
  Widget _buildDataAndStorage() {
    return GestureDetector(
        onTap: () {
          toDataStorage();
        },
        child: Container(
            margin: EdgeInsets.only(right: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgDatastorageicon,
                  height: 27.v,
                  width: 23.h,
                  margin: EdgeInsets.only(bottom: 12.v)),
              Padding(
                  padding: EdgeInsets.fromLTRB(35.h, 5.v, 122.h, 12.v),
                  child: Text("msg_data_and_storage".tr,
                      style: TextStyle(
                          color: appTheme.gray700,
                          fontSize: 16.fSize,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400)))
            ])));
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 5.h, right: 18.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        toHomeSetting();
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
                        toNotifSetting();
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
                        toProfileSettings();
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
                        toSupportSettings();
                      },
                      child: SizedBox(
                          height: 48.v,
                          width: 45.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgSupporticon,
                                    height: 24.v,
                                    width: 23.h,
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(
                                        left: 11.h, right: 11.h, bottom: 24.v)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 31.v),
                                        child: Text("lbl_support".tr,
                                            style: theme.textTheme.bodySmall)))
                              ]))),
                  Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSearchGray700,
                        height: 24.v,
                        width: 23.h),
                    SizedBox(height: 7.v),
                    Text("lbl_settings".tr, style: theme.textTheme.bodySmall)
                  ])
                ])));
  }

  /// Navigates to the accountsettingsScreen when the action is triggered.
  toAcctSettings() {
    Get.toNamed(
      AppRoutes.accountsettingsScreen,
    );
  }

  /// Navigates to the notificationsettingsScreen when the action is triggered.
  toNotifSettings() {
    Get.toNamed(
      AppRoutes.notificationsettingsScreen,
    );
  }

  /// Navigates to the dataandstorageScreen when the action is triggered.
  toDataStorage() {
    Get.toNamed(
      AppRoutes.dataandstorageScreen,
    );
  }

  /// Navigates to the supportScreen when the action is triggered.
  toTecSupport() {
    Get.toNamed(
      AppRoutes.supportScreen,
    );
  }

  /// Navigates to the signinScreen when the action is triggered.
  toSignIn() {
    Get.toNamed(
      AppRoutes.signinScreen,
    );
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  toHomeSetting() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  toNotifSetting() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  toProfileSettings() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  toSupportSettings() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }
}
