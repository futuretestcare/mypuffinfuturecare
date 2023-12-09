import 'controller/dataandstorage_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

class DataandstorageScreen extends GetWidget<DataandstorageController> {
  const DataandstorageScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.all(27.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.v),
                          CustomTextFormField(
                              controller: controller.termAndConditionController,
                              hintText: "msg_terms_and_conditions".tr,
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.only(left: 11.h, right: 30.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgTocicon,
                                      height: 29.v,
                                      width: 24.h)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 39.v),
                              contentPadding: EdgeInsets.only(
                                  top: 3.v, right: 30.h, bottom: 3.v),
                              borderDecoration: TextFormFieldStyleHelper
                                  .underLineOnPrimaryContainer,
                              filled: false),
                          SizedBox(height: 24.v),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgDatastorageicon,
                                    height: 27.v,
                                    width: 23.h),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 34.h, top: 4.v),
                                    child: Text("lbl_storage".tr,
                                        style: theme.textTheme.bodyLarge))
                              ])),
                          Spacer(),
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
            text: "lbl_data_storage".tr, margin: EdgeInsets.only(left: 14.h)));
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                datatToHome();
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
                dataToNotif();
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
                dataToProfile();
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
                dataToSupport();
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
                dataToSetting();
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

  /// Navigates to the homescreenScreen when the action is triggered.
  datatToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  dataToNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  dataToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  dataToSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  dataToSetting() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
