import 'controller/doctorselection_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_text_form_field.dart';

class DoctorselectionScreen extends GetWidget<DoctorselectionController> {
  const DoctorselectionScreen({Key? key}) : super(key: key);

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
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 23.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 4.v),
                      Text("msg_who_is_your_doctor".tr,
                          style: CustomTextStyles.headlineLarge30),
                      SizedBox(height: 15.v),
                      _buildEightyFour(),
                      Spacer(),
                      CustomElevatedButton(
                          height: 52.v,
                          text: "msg_use_a_referral_code".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                          buttonTextStyle:
                              CustomTextStyles.bodyLargeExoWhiteA700),
                      SizedBox(height: 12.v),
                      CustomElevatedButton(
                          height: 52.v,
                          text: "lbl_skip".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL81,
                          buttonTextStyle:
                              CustomTextStyles.bodyLargeExoWhiteA700,
                          onPressed: () {
                            docselectToGoalsSelect();
                          })
                    ])))));
  }

  /// Section Widget
  Widget _buildEightyFour() {
    return SizedBox(
        height: 324.v,
        width: 330.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(19.h, 63.v, 24.h, 16.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgAvatardoccol,
                            height: 245.v,
                            width: 36.h),
                        CustomImageView(
                            imagePath: ImageConstant.imgSelectdoccol,
                            height: 226.v,
                            width: 19.h,
                            margin: EdgeInsets.only(top: 8.v, bottom: 11.v))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 324.v,
                  width: 330.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(left: 77.h, right: 66.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildDoctorSelection(
                                      userName: "lbl_brandon_taylor".tr,
                                      userRole: "lbl_cardiologist".tr),
                                  _buildDoctorSelection(
                                      userName: "lbl_nathan_wood".tr,
                                      userRole: "msg_family_physician".tr),
                                  _buildDoctorSelection(
                                      userName: "lbl_dexter_blake".tr,
                                      userRole: "lbl_cardiologist".tr),
                                  _buildDoctorSelection(
                                      userName: "lbl_cassidy_reed".tr,
                                      userRole: "msg_orthopedic_surgeon".tr)
                                ]))),
                    CustomTextFormField(
                        width: 330.h,
                        controller: controller.searchController,
                        hintText: "lbl_search".tr,
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.topCenter)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildDoctorSelection({
    required String userName,
    required String userRole,
  }) {
    return Container(
        width: 187.h,
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        decoration: AppDecoration.outlineGray,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(userName,
                  style: theme.textTheme.titleSmall!.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1))),
              SizedBox(height: 6.v),
              Text(userRole,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.gray700))
            ]));
  }

  /// Navigates to the goalselectionScreen when the action is triggered.
  docselectToGoalsSelect() {
    Get.toNamed(
      AppRoutes.goalselectionScreen,
    );
  }
}
