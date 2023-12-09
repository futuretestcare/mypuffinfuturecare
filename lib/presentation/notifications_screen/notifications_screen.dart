import 'controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 13.h, vertical: 27.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 21.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 37.h),
                              child: Text("lbl_notifications".tr,
                                  style: theme.textTheme.headlineLarge))),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: _buildSleptWellColumn(
                              alarmBellGreenIcon:
                                  ImageConstant.imgAlarmbellredicon,
                              yourSleptWell: "msg_low_blood_oxygen".tr,
                              arrowRight: ImageConstant.imgArrowRight,
                              duration: "msg_your_blood_oxygen".tr,
                              haveAGreatDay: "msg_below_safe_levels".tr)),
                      SizedBox(height: 16.v),
                      _buildExampleYellowNotifColumn(),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: _buildSleptWellColumn(
                              alarmBellGreenIcon:
                                  ImageConstant.imgAlarmbellgreenicon,
                              yourSleptWell: "msg_your_slept_well".tr,
                              arrowRight: ImageConstant.imgArrowRightGreenA700,
                              duration: "msg_you_got_7_hours".tr,
                              haveAGreatDay: "msg_have_a_great_day".tr)),
                      Spacer(),
                      _buildBottomNavBarRow()
                    ])))));
  }

  /// Section Widget
  Widget _buildExampleYellowNotifColumn() {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
        decoration: AppDecoration.outlineOnPrimary7
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 27.h, right: 1.h),
                  child: _buildHighBloodPressureRow(
                      highBloodPressureText: "msg_high_blood_pressure".tr)),
              Padding(
                  padding: EdgeInsets.only(right: 100.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgAlarmbellyellowicon,
                        height: 20.v,
                        width: 17.h),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("msg_your_blood_pressure".tr,
                            style: CustomTextStyles.bodyLargeExoLime200))
                  ])),
              SizedBox(height: 2.v),
              Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Text("lbl_than_normal".tr,
                      style: CustomTextStyles.bodyLargeExoLime200))
            ]));
  }

  /// Section Widget
  Widget _buildBottomNavBarRow() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h, right: 30.h),
            child: Row(children: [
              GestureDetector(
                  onTap: () {
                    notifToHome();
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
              Padding(
                  padding: EdgeInsets.only(left: 21.h, bottom: 1.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgNotificationicon,
                        height: 24.v,
                        width: 21.h),
                    SizedBox(height: 6.v),
                    Text("lbl_notifications".tr,
                        style: theme.textTheme.bodySmall)
                  ])),
              GestureDetector(
                  onTap: () {
                    notifToProfile();
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
                    notiftoSupport();
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
                    notifToSetting();
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
  Widget _buildHighBloodPressureRow({required String highBloodPressureText}) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(highBloodPressureText,
          style: CustomTextStyles.titleMediumYellow800
              .copyWith(color: appTheme.yellow800)),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRightYellow80001,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(top: 5.v, bottom: 4.v))
    ]);
  }

  /// Common widget
  Widget _buildSleptWellColumn({
    required String alarmBellGreenIcon,
    required String yourSleptWell,
    required String arrowRight,
    required String duration,
    required String haveAGreatDay,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
        decoration: AppDecoration.outlineOnPrimary8
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: alarmBellGreenIcon,
              height: 20.v,
              width: 17.h,
              margin: EdgeInsets.symmetric(vertical: 22.v)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h, bottom: 1.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(yourSleptWell,
                                  style: theme.textTheme.titleMedium!
                                      .copyWith(color: appTheme.greenA700)),
                              CustomImageView(
                                  imagePath: arrowRight,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 5.v, bottom: 4.v))
                            ]),
                        Text(duration,
                            style: CustomTextStyles.bodyLargeExoOnError
                                .copyWith(color: theme.colorScheme.onError)),
                        Text(haveAGreatDay,
                            style: CustomTextStyles.bodyLargeExoOnError
                                .copyWith(color: theme.colorScheme.onError))
                      ])))
        ]));
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  notifToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  notifToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  notiftoSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  notifToSetting() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
