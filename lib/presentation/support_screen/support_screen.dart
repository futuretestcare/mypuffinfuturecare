import 'controller/support_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/custom_drop_down.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';

class SupportScreen extends GetWidget<SupportController> {
  const SupportScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 28.h, vertical: 27.v),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 25.v),
                          Padding(
                              padding: EdgeInsets.only(left: 22.h),
                              child: Text("msg_technical_support".tr,
                                  style: theme.textTheme.headlineLarge)),
                          SizedBox(height: 44.v),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text("msg_which_option_best".tr,
                                  style: CustomTextStyles.bodyLargeExo)),
                          SizedBox(height: 6.v),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h, right: 6.h),
                              child: CustomDropDown(
                                  hintText: "lbl_dropdown".tr,
                                  items: controller.supportModelObj.value
                                      .dropdownItemList.value,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 9.v),
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  })),
                          SizedBox(height: 28.v),
                          Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text("msg_please_explain_your".tr,
                                  style: CustomTextStyles.bodyLargeExo)),
                          SizedBox(height: 5.v),
                          _buildExplainIssueTextbox(),
                          SizedBox(height: 33.v),
                          CustomElevatedButton(
                              height: 52.v,
                              text: "msg_generate_and_send".tr,
                              margin: EdgeInsets.only(left: 5.h, right: 10.h),
                              buttonStyle:
                                  CustomButtonStyles.outlineOnPrimaryTL4,
                              buttonTextStyle: CustomTextStyles
                                  .bodyMediumWhiteA700ExtraLight),
                          SizedBox(height: 32.v),
                          Divider(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              indent: 5.h,
                              endIndent: 10.h),
                          SizedBox(height: 22.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("msg_did_you_mean_to".tr,
                                  style: CustomTextStyles.bodyMediumOnPrimary)),
                          SizedBox(height: 13.v),
                          CustomElevatedButton(
                              height: 52.v,
                              text: "lbl_live_chat".tr,
                              margin: EdgeInsets.only(right: 15.h),
                              buttonStyle:
                                  CustomButtonStyles.outlineOnPrimaryTL4,
                              buttonTextStyle: CustomTextStyles
                                  .bodyMediumWhiteA700ExtraLight,
                              onPressed: () {
                                toLiveChat();
                              }),
                          SizedBox(height: 97.v),
                          _buildBottomNavBar()
                        ])))));
  }

  /// Section Widget
  Widget _buildExplainIssueTextbox() {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 314.h,
            margin: EdgeInsets.symmetric(horizontal: 9.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 57.v),
            decoration: AppDecoration.outlineGray500011
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Text("msg_please_explain_your2".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary)
                ])));
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 15.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                techToHome();
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
                techsupportToNotif();
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
                techsupportToProfile();
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
                techsuptoLivechat();
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
                techsupportToSettings();
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

  /// Navigates to the livechatScreen when the action is triggered.
  toLiveChat() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  techToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  techsupportToNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  techsupportToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  techsuptoLivechat() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  techsupportToSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
