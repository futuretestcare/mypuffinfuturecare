import 'controller/notificationsettings_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';
import 'package:mypuffinfuturecare/widgets/custom_switch.dart';

class NotificationsettingsScreen
    extends GetWidget<NotificationsettingsController> {
  const NotificationsettingsScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 30.h, vertical: 20.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text("msg_push_notifications".tr,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 110.v,
                                    child: VerticalDivider(
                                        width: 1.h,
                                        thickness: 1.v,
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1))),
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, bottom: 6.v),
                                        child: Column(children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Text(
                                                        "lbl_lock_screen".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge)),
                                                Obx(() => CustomSwitch(
                                                    value: controller
                                                        .isSelectedSwitch.value,
                                                    onChange: (value) {
                                                      controller
                                                          .isSelectedSwitch
                                                          .value = value;
                                                    }))
                                              ]),
                                          SizedBox(height: 15.v),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 2.v),
                                                    child: Text(
                                                        "msg_floating_notifications"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodyLarge)),
                                                Obx(() => CustomSwitch(
                                                    value: controller
                                                        .isSelectedSwitch1
                                                        .value,
                                                    onChange: (value) {
                                                      controller
                                                          .isSelectedSwitch1
                                                          .value = value;
                                                    }))
                                              ]),
                                          SizedBox(height: 15.v),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 1.v),
                                                    child: Text("lbl_badges".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge)),
                                                Obx(() => CustomSwitch(
                                                    value: controller
                                                        .isSelectedSwitch2
                                                        .value,
                                                    onChange: (value) {
                                                      controller
                                                          .isSelectedSwitch2
                                                          .value = value;
                                                    }))
                                              ])
                                        ])))
                              ])),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text("lbl_sound".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch3.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch3.value =
                                          value;
                                    }))
                              ])),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text("lbl_vibration".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch4.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch4.value =
                                          value;
                                    }))
                              ])),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text("msg_in_app_notifications".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch5.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch5.value =
                                          value;
                                    }))
                              ])),
                      Spacer(),
                      SizedBox(height: 6.v),
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
        centerTitle: true,
        title: AppbarTitle(text: "msg_notification_settings".tr));
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
                        notifsettingToHome();
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
                        notifsettingToNotif();
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
                        notifsettingToProfile();
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
                        notifsettingToSupport();
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
                        notifsettToSett();
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

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  notifsettingToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  notifsettingToNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  notifsettingToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  notifsettingToSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  notifsettToSett() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
