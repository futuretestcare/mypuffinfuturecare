import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/core/utils/validation_functions.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  SignupScreen({Key? key}) : super(key: key);

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
                              SizedBox(height: 65.v),
                              Text("lbl_sign_up".tr,
                                  style: theme.textTheme.headlineLarge),
                              Text("msg_create_an_account".tr,
                                  style: CustomTextStyles.titleLargePrimary),
                              SizedBox(height: 21.v),
                              _buildEmailField(),
                              SizedBox(height: 29.v),
                              _buildPasswordField(),
                              SizedBox(height: 22.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgTermscheckboxicon,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(bottom: 3.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_i_agree_with".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumManropeOnPrimary_1),
                                              TextSpan(
                                                  text:
                                                      "msg_terms_conditions".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumManropeTeal200_1)
                                            ]),
                                            textAlign: TextAlign.left))
                                  ])),
                              SizedBox(height: 19.v),
                              _buildSignUpButton(),
                              SizedBox(height: 22.v),
                              Text("lbl_or".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.labelLargeBluegray50001),
                              SizedBox(height: 20.v),
                              _buildSignUpWithGoogleButton(),
                              SizedBox(height: 12.v),
                              _buildSignUpWithFacebookButton(),
                              SizedBox(height: 22.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("msg_already_have_an".tr,
                                        style: CustomTextStyles
                                            .bodyMediumManropeOnPrimary),
                                    GestureDetector(
                                        onTap: () {
                                          signupToSignIn();
                                        },
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Text("lbl_sign_in".tr,
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
  Widget _buildSignUpButton() {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
        onPressed: () {
          signupToAcctSetup();
        });
  }

  /// Section Widget
  Widget _buildSignUpWithGoogleButton() {
    return CustomElevatedButton(
        text: "msg_sign_up_with_google".tr,
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
  Widget _buildSignUpWithFacebookButton() {
    return CustomElevatedButton(
        text: "msg_sign_up_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebookicon,
                height: 15.v,
                width: 16.h)),
        buttonStyle: CustomButtonStyles.fillErrorContainer,
        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700);
  }

  /// Navigates to the initacctsetupScreen when the action is triggered.
  signupToAcctSetup() {
    Get.toNamed(
      AppRoutes.initacctsetupScreen,
    );
  }

  /// Navigates to the signinScreen when the action is triggered.
  signupToSignIn() {
    Get.toNamed(
      AppRoutes.signinScreen,
    );
  }
}
