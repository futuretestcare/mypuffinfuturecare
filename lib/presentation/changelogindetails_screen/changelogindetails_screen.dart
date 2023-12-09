import 'controller/changelogindetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/core/utils/validation_functions.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChangelogindetailsScreen extends GetWidget<ChangelogindetailsController> {
  ChangelogindetailsScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 17.h, vertical: 7.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_change_username".tr,
                                      style: CustomTextStyles
                                          .bodyLargeExoBluegray800))),
                          SizedBox(height: 6.v),
                          _buildChangeUsername(),
                          SizedBox(height: 13.v),
                          _buildSaveButton(),
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_change_email".tr,
                                      style: CustomTextStyles
                                          .bodyLargeExoBluegray800))),
                          SizedBox(height: 6.v),
                          _buildChangeEmail(),
                          SizedBox(height: 14.v),
                          _buildSaveButton1(),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_change_password".tr,
                                      style: CustomTextStyles
                                          .bodyLargeExoBluegray800))),
                          SizedBox(height: 6.v),
                          _buildChangePassword(),
                          SizedBox(height: 12.v),
                          _buildNewPassword(),
                          SizedBox(height: 12.v),
                          _buildNewPassword1(),
                          SizedBox(height: 12.v),
                          _buildSaveButton2(),
                          SizedBox(height: 25.v),
                          _buildBottomNavBar(),
                          SizedBox(height: 5.v)
                        ]))))));
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
            text: "msg_change_log_in_details".tr,
            margin: EdgeInsets.only(left: 14.h)));
  }

  /// Section Widget
  Widget _buildChangeUsername() {
    return CustomTextFormField(
        controller: controller.changeUsernameController,
        hintText: "lbl_username".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(
        height: 50.v,
        text: "lbl_save".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 9.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSaveicon,
                height: 18.adaptSize,
                width: 18.adaptSize)),
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildChangeEmail() {
    return CustomTextFormField(
        controller: controller.changeEmailController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildSaveButton1() {
    return CustomElevatedButton(
        height: 50.v,
        text: "lbl_save".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 6.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSave4,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildChangePassword() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: CustomTextFormField(
            controller: controller.changePasswordController,
            hintText: "lbl_old_password".tr,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
            borderDecoration:
                TextFormFieldStyleHelper.outlineOnPrimaryContainer));
  }

  /// Section Widget
  Widget _buildNewPassword() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: CustomTextFormField(
            controller: controller.newPasswordController,
            hintText: "lbl_new_password".tr,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
            borderDecoration:
                TextFormFieldStyleHelper.outlineOnPrimaryContainer));
  }

  /// Section Widget
  Widget _buildNewPassword1() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: CustomTextFormField(
            controller: controller.newPasswordController1,
            hintText: "msg_confirm_new_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
            borderDecoration:
                TextFormFieldStyleHelper.outlineOnPrimaryContainer));
  }

  /// Section Widget
  Widget _buildSaveButton2() {
    return CustomElevatedButton(
        height: 50.v,
        text: "lbl_save".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 9.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSaveicon,
                height: 18.adaptSize,
                width: 18.adaptSize)),
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 13.h, right: 26.h),
            child: Row(children: [
              GestureDetector(
                  onTap: () {
                    changeToHome();
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
                    changeToNotif();
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
                    changeToProfile();
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
                    changeToSupport();
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
                    changeToSettings();
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

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  changeToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  changeToNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  changeToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  changeToSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  changeToSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
