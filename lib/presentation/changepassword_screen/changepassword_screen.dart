import 'controller/changepassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/core/utils/validation_functions.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChangepasswordScreen extends GetWidget<ChangepasswordController> {
  ChangepasswordScreen({Key? key}) : super(key: key);

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
                        padding: EdgeInsets.symmetric(horizontal: 22.h),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("msg_set_new_password".tr,
                                  style:
                                      CustomTextStyles.headlineLargeSemiBold),
                              SizedBox(height: 19.v),
                              Text("msg_must_be_at_least".tr,
                                  style: CustomTextStyles.bodyMediumGray50001),
                              SizedBox(height: 16.v),
                              CustomTextFormField(
                                  controller: controller.newpasswordController,
                                  hintText: "msg_enter_new_password".tr,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 13.h, vertical: 16.v)),
                              SizedBox(height: 14.v),
                              CustomTextFormField(
                                  controller: controller.newpasswordController1,
                                  hintText: "msg_confirm_new_password".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 13.h, vertical: 16.v)),
                              SizedBox(height: 15.v),
                              GestureDetector(
                                  onTap: () {
                                    backtoLogin();
                                  },
                                  child: Container(
                                      width: 343.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.h, vertical: 16.v),
                                      decoration: AppDecoration
                                          .outlineOnPrimary4
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Text("lbl_set_password".tr,
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700ExtraLight))),
                              SizedBox(height: 16.v),
                              GestureDetector(
                                  onTap: () {
                                    backtoSignIN();
                                  },
                                  child: Text("lbl_back_to_login".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray50001)),
                              SizedBox(height: 5.v)
                            ]))))));
  }

  /// Navigates to the changepasswordsuccessScreen when the action is triggered.
  backtoLogin() {
    Get.toNamed(
      AppRoutes.changepasswordsuccessScreen,
    );
  }

  /// Navigates to the signinScreen when the action is triggered.
  backtoSignIN() {
    Get.toNamed(
      AppRoutes.signinScreen,
    );
  }
}
