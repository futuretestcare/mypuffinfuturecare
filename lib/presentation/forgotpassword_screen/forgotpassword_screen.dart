import 'controller/forgotpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/core/utils/validation_functions.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotpasswordScreen extends GetWidget<ForgotpasswordController> {
  ForgotpasswordScreen({Key? key}) : super(key: key);

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
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("msg_forgot_password".tr,
                                  style:
                                      CustomTextStyles.headlineLargeSemiBold),
                              SizedBox(height: 18.v),
                              SizedBox(
                                  width: 183.h,
                                  child: Text("msg_no_worries_we_will".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyMediumGray50001
                                          .copyWith(height: 1.57))),
                              SizedBox(height: 17.v),
                              CustomTextFormField(
                                  controller: controller.emailController,
                                  hintText: "lbl_enter_email".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_email"
                                          .tr;
                                    }
                                    return null;
                                  }),
                              SizedBox(height: 22.v),
                              CustomElevatedButton(
                                  text: "lbl_send_link".tr,
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  buttonTextStyle:
                                      CustomTextStyles.bodyLargeWhiteA700,
                                  onPressed: () {
                                    forgotToChangePass();
                                  }),
                              SizedBox(height: 17.v),
                              GestureDetector(
                                  onTap: () {
                                    forgotToLogin();
                                  },
                                  child: Text("lbl_back_to_login".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray50001)),
                              SizedBox(height: 4.v)
                            ]))))));
  }

  /// Navigates to the changepasswordScreen when the action is triggered.
  forgotToChangePass() {
    Get.toNamed(
      AppRoutes.changepasswordScreen,
    );
  }

  /// Navigates to the signinScreen when the action is triggered.
  forgotToLogin() {
    Get.toNamed(
      AppRoutes.signinScreen,
    );
  }
}
