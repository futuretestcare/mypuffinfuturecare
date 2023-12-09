import 'controller/initacctsetup_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/core/utils/validation_functions.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_radio_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InitacctsetupScreen extends GetWidget<InitacctsetupController> {
  InitacctsetupScreen({Key? key}) : super(key: key);

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
                              CustomImageView(
                                  imagePath: ImageConstant.imgInitaccticon,
                                  height: 132.adaptSize,
                                  width: 132.adaptSize),
                              SizedBox(height: 42.v),
                              Text("msg_let_s_get_started".tr,
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 32.v),
                              _buildFirstName(),
                              SizedBox(height: 13.v),
                              _buildLastName(),
                              SizedBox(height: 13.v),
                              _buildDate(),
                              SizedBox(height: 14.v),
                              _buildWeight(),
                              SizedBox(height: 13.v),
                              _buildWeight1(),
                              SizedBox(height: 18.v),
                              _buildEnterGenderRadio(),
                              SizedBox(height: 19.v),
                              _buildNext(),
                              SizedBox(height: 1.v)
                            ]))))));
  }

  /// Section Widget
  Widget _buildFirstName() {
    return CustomTextFormField(
        controller: controller.firstNameController,
        hintText: "lbl_first_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildLastName() {
    return CustomTextFormField(
        controller: controller.lastNameController,
        hintText: "lbl_last_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildDate() {
    return CustomTextFormField(
        controller: controller.dateController,
        hintText: "lbl_birth_date".tr,
        hintStyle: CustomTextStyles.bodyMediumManropeOnPrimaryContainer,
        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
        fillColor: appTheme.whiteA700);
  }

  /// Section Widget
  Widget _buildWeight() {
    return CustomTextFormField(
        controller: controller.weightController, hintText: "lbl_height".tr);
  }

  /// Section Widget
  Widget _buildWeight1() {
    return CustomTextFormField(
        controller: controller.weightController1,
        hintText: "lbl_weight".tr,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildEnterGenderRadio() {
    return Obx(() => Row(children: [
          CustomRadioButton(
              text: "lbl_male".tr,
              value: controller.initacctsetupModelObj.value.radioList.value[0],
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: CustomRadioButton(
                  text: "lbl_female".tr,
                  value:
                      controller.initacctsetupModelObj.value.radioList.value[1],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(left: 21.h),
              child: CustomRadioButton(
                  text: "lbl_other".tr,
                  value:
                      controller.initacctsetupModelObj.value.radioList.value[2],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
        height: 52.v,
        text: "lbl_next".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL8,
        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA70018,
        onPressed: () {
          acctsetupToDocSelect();
        });
  }

  /// Navigates to the doctorselectionScreen when the action is triggered.
  acctsetupToDocSelect() {
    Get.toNamed(
      AppRoutes.doctorselectionScreen,
    );
  }
}
