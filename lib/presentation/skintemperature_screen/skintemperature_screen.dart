import 'controller/skintemperature_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';

class SkintemperatureScreen extends GetWidget<SkintemperatureController> {
  const SkintemperatureScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 19.h, top: 19.v, right: 19.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSkinTemp(),
                          SizedBox(height: 11.v),
                          Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text("msg_nightly_variation".tr,
                                  style: theme.textTheme.headlineLarge)),
                          SizedBox(height: 5.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowDown,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 9.v, bottom: 6.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("lbl_this_week".tr,
                                        style: CustomTextStyles
                                            .headlineLargeMedium))
                              ])),
                          SizedBox(height: 13.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgExampletempgraph,
                              height: 218.v,
                              width: 335.h,
                              margin: EdgeInsets.only(left: 4.h)),
                          SizedBox(height: 9.v),
                          Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowDownOnprimary,
                                    height: 10.v,
                                    width: 18.h,
                                    margin: EdgeInsets.only(
                                        top: 16.v, bottom: 13.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Text("lbl_last_week".tr,
                                        style: CustomTextStyles
                                            .headlineLargeMedium))
                              ])),
                          SizedBox(height: 11.v),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowDownOnprimary,
                                    height: 10.v,
                                    width: 18.h,
                                    margin: EdgeInsets.only(
                                        top: 16.v, bottom: 13.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 17.h),
                                    child: Text("lbl_october_15_21".tr,
                                        style: CustomTextStyles
                                            .headlineLargeMedium))
                              ])),
                          SizedBox(height: 50.v),
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
        title: AppbarTitle(
            text: "lbl_temperature".tr, margin: EdgeInsets.only(left: 15.h)));
  }

  /// Section Widget
  Widget _buildSkinTemp() {
    return Container(
        width: 352.h,
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 5.v),
        decoration: AppDecoration.outlineOnPrimary4
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Padding(
                  padding: EdgeInsets.only(right: 31.h),
                  child: Row(children: [
                    Text("msg_skin_temperature".tr,
                        style: CustomTextStyles.headlineLargeWhiteA700),
                    CustomImageView(
                        imagePath: ImageConstant.imgInfoicon,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin:
                            EdgeInsets.only(left: 5.h, top: 12.v, bottom: 13.v))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("lbl_35".tr,
                            style: CustomTextStyles.exoLightgreenA700)),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text("lbl_c".tr,
                            style: CustomTextStyles.exoWhiteA700))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Padding(
        padding: EdgeInsets.only(left: 11.h, right: 24.h),
        child: Row(children: [
          GestureDetector(
              onTap: () {
                temptToHome();
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
                tempToNotif();
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
                tempToProfile();
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
                tempToSupport();
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
                tempToSetting();
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

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  temptToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  tempToNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  tempToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  tempToSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  tempToSetting() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
