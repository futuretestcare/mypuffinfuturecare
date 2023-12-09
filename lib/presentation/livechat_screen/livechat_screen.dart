import 'controller/livechat_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

class LivechatScreen extends GetWidget<LivechatController> {
  const LivechatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
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
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: 228.h,
                                  child: Text("msg_you_are_talking".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .headlineSmallExoTeal200
                                          .copyWith(height: 1.25)))),
                          SizedBox(height: 11.v),
                          Padding(
                              padding: EdgeInsets.only(right: 103.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgLivechatdocicon,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(left: 14.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.h, vertical: 5.v),
                                        decoration: AppDecoration
                                            .outlineGray50001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 4.v),
                                              Text("msg_hi_john_how_can".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumManropeOnPrimary)
                                            ])))
                              ])),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.only(right: 12.h),
                              child: CustomTextFormField(
                                  controller: controller.messageController,
                                  hintText: "msg_type_your_message".tr,
                                  textInputAction: TextInputAction.done,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          12.h, 8.v, 14.h, 8.v),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgSendmsgicon,
                                          height: 18.adaptSize,
                                          width: 18.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 39.v),
                                  contentPadding: EdgeInsets.only(
                                      left: 12.h, top: 9.v, bottom: 9.v))),
                          SizedBox(height: 47.v),
                          _buildBottomNavBar(),
                          SizedBox(height: 21.v)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 35.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 27.h, top: 19.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_live_chat".tr, margin: EdgeInsets.only(left: 14.h)));
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 23.h),
        child: Row(children: [
          GestureDetector(
              onTap: () {
                chatToHome();
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
                chatToNotif();
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
                chatToProfile();
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
          Padding(
              padding: EdgeInsets.only(left: 20.h),
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
                chatToSettings();
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
  chatToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  chatToNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  chatToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  chatToSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
