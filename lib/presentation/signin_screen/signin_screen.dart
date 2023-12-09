import 'controller/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/core/utils/validation_functions.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_switch.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SigninScreen extends GetWidget<SigninController> {
  SigninScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 27.h),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 63.v),
                              Text("lbl_sign_in2".tr,
                                  style: theme.textTheme.headlineLarge),
                              Text("lbl_welcome_back".tr,
                                  style: CustomTextStyles.titleLargePrimary),
                              SizedBox(height: 24.v),
                              _buildEmailField(),
                              SizedBox(height: 29.v),
                              _buildPasswordField(),
                              SizedBox(height: 17.v),
                              _buildRememberForgotRow(),
                              SizedBox(height: 19.v),
                              _buildSignInButton(),
                              SizedBox(height: 21.v),
                              Text("lbl_or".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.labelLargeBluegray50001),
                              SizedBox(height: 20.v),
                              _buildContinueWithGoogleButton(),
                              SizedBox(height: 12.v),
                              _buildContinueWithFacebookButton(),
                              SizedBox(height: 20.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text(
                                            "msg_don_t_have_an_account".tr,
                                            style: CustomTextStyles
                                                .bodyMediumManropeOnPrimary)),
                                    GestureDetector(
                                        onTap: () {
                                          toSignUp();
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("lbl_sign_up2".tr,
                                                style: CustomTextStyles
                                                    .titleSmallTeal200)))
                                  ])
                            ]))))));
  }

  /// Section Widget
  Widget _buildEmailField() {
    return CustomTextFormField(
        controller: controller.emailFieldController,
        hintText: "lbl_enter_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordFieldController,
        hintText: "lbl_enter_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(12.h, 15.v, 20.h, 15.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgSeepasswordicon,
                    height: 11.v,
                    width: 15.h))),
        suffixConstraints: BoxConstraints(maxHeight: 43.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 13.h, top: 12.v, bottom: 12.v)));
  }

  /// Section Widget
  Widget _buildRememberForgotRow() {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_remember_me".tr,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer)),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(left: 10.h),
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              })),
          Spacer(),
          GestureDetector(
              onTap: () {
                toForgotPassword();
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text("msg_forgot_password2".tr,
                      style: CustomTextStyles.bodyMediumManropeTeal200)))
        ]));
  }

  /// Section Widget
  Widget _buildSignInButton() {
    return CustomElevatedButton(
        text: "lbl_sign_in2".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
        onPressed: () {
          toHomeScreen();
        });
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButton() {
    return CustomElevatedButton(
        text: "msg_continue_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleicon,
                height: 15.v,
                width: 14.h)),
        buttonStyle: CustomButtonStyles.fillRed,
        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700);
  }

  /// Section Widget
  Widget _buildContinueWithFacebookButton() {
    return CustomElevatedButton(
        text: "msg_continue_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebookicon,
                height: 15.v,
                width: 16.h)),
        buttonStyle: CustomButtonStyles.fillErrorContainer,
        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700);
  }

  /// Navigates to the forgotpasswordScreen when the action is triggered.
  toForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotpasswordScreen,
    );
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  toHomeScreen() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  toSignUp() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
