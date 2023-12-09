import 'controller/editprofile_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/core/utils/validation_functions.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';
import 'package:mypuffinfuturecare/widgets/custom_drop_down.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditprofileScreen extends GetWidget<EditprofileController> {
  EditprofileScreen({Key? key}) : super(key: key);

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
                            horizontal: 20.h, vertical: 11.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgExampleprofileicon,
                              height: 112.adaptSize,
                              width: 112.adaptSize),
                          SizedBox(height: 21.v),
                          _buildFirstName(),
                          SizedBox(height: 16.v),
                          _buildLastName(),
                          SizedBox(height: 13.v),
                          CustomDropDown(
                              hintText: "lbl_gender".tr,
                              items: controller.editprofileModelObj.value
                                  .dropdownItemList.value,
                              onChanged: (value) {
                                controller.onSelected(value);
                              }),
                          SizedBox(height: 16.v),
                          _buildDate(),
                          SizedBox(height: 16.v),
                          _buildSixty(),
                          SizedBox(height: 17.v),
                          _buildHealthCondition(),
                          SizedBox(height: 23.v),
                          _buildSave(),
                          SizedBox(height: 23.v),
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
            margin: EdgeInsets.only(left: 27.h, top: 19.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_edit_profile".tr, margin: EdgeInsets.only(left: 14.h)));
  }

  /// Section Widget
  Widget _buildFirstName() {
    return CustomTextFormField(
        controller: controller.firstNameController,
        hintText: "lbl_first_name".tr,
        hintStyle: theme.textTheme.bodyMedium!,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary);
  }

  /// Section Widget
  Widget _buildLastName() {
    return CustomTextFormField(
        controller: controller.lastNameController,
        hintText: "lbl_last_name".tr,
        hintStyle: theme.textTheme.bodyMedium!,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary);
  }

  /// Section Widget
  Widget _buildDate() {
    return CustomTextFormField(
        controller: controller.dateController,
        hintText: "lbl_birth_date".tr,
        hintStyle: theme.textTheme.bodyMedium!,
        contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary);
  }

  /// Section Widget
  Widget _buildHeight() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: CustomTextFormField(
                controller: controller.heightController,
                hintText: "lbl_height2".tr,
                hintStyle: CustomTextStyles.bodyMediumManrope,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v))));
  }

  /// Section Widget
  Widget _buildWeight() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: CustomTextFormField(
                controller: controller.weightController,
                hintText: "lbl_weight2".tr,
                hintStyle: CustomTextStyles.bodyMediumManrope,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v))));
  }

  /// Section Widget
  Widget _buildSixty() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildHeight(), _buildWeight()]));
  }

  /// Section Widget
  Widget _buildHealthCondition() {
    return CustomTextFormField(
        controller: controller.healthConditionController,
        hintText: "msg_health_condition".tr,
        hintStyle: theme.textTheme.bodyMedium!,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary);
  }

  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
        height: 50.v,
        text: "lbl_save".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 9.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSaveicon,
                height: 18.adaptSize,
                width: 18.adaptSize)),
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
        onPressed: () {
          editTOProfile();
        });
  }

  /// Section Widget
  Widget _buildBottomNavBar() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 10.h, right: 23.h),
            child: Row(children: [
              GestureDetector(
                  onTap: () {
                    editToHome();
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
                    editToNotif();
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
                    editToProfile();
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
                    editToSupport();
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
                    editToSettings();
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

  /// Navigates to the viewprofileScreen when the action is triggered.
  editTOProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  editToHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  editToNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  editToProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  editToSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  editToSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
