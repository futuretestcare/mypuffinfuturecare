import 'controller/goalselection_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/custom_checkbox_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';

class GoalselectionScreen extends GetWidget<GoalselectionController> {
  const GoalselectionScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 23.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("msg_select_your_goals".tr,
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 8.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("msg_you_can_select_multiple".tr,
                                  style: CustomTextStyles
                                      .bodyMediumManropeGray50001))),
                      SizedBox(height: 31.v),
                      _buildGoalExample1(),
                      SizedBox(height: 20.v),
                      _buildGoalExample2(),
                      SizedBox(height: 20.v),
                      _buildGoalExample3(),
                      SizedBox(height: 20.v),
                      _buildGoalExample4(),
                      SizedBox(height: 20.v),
                      _buildGoalExample5(),
                      Spacer(),
                      CustomElevatedButton(
                          height: 52.v,
                          text: "lbl_next".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                          buttonTextStyle:
                              CustomTextStyles.bodyLargeWhiteA70018,
                          onPressed: () {
                            goalsToHS();
                          }),
                      SizedBox(height: 12.v),
                      CustomElevatedButton(
                          height: 52.v,
                          text: "lbl_skip".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL81,
                          buttonTextStyle:
                              CustomTextStyles.bodyLargeWhiteA70018,
                          onPressed: () {
                            goalsToHS2();
                          })
                    ])))));
  }

  /// Section Widget
  Widget _buildGoalExample1() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 20.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Obx(() => CustomCheckboxButton(
                  width: 302.h,
                  text: "msg_prescribed_by_health".tr,
                  value: controller.goalPerscribedRectangle.value,
                  isRightCheck: true,
                  onChange: (value) {
                    controller.goalPerscribedRectangle.value = value;
                  }))
            ]));
  }

  /// Section Widget
  Widget _buildGoalExample2() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 20.v),
        decoration: AppDecoration.fillGray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Obx(() => CustomCheckboxButton(
                  width: 302.h,
                  text: "msg_weight_managment".tr,
                  value: controller.weightManagement.value,
                  isRightCheck: true,
                  onChange: (value) {
                    controller.weightManagement.value = value;
                  }))
            ]));
  }

  /// Section Widget
  Widget _buildGoalExample3() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 20.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Obx(() => CustomCheckboxButton(
                  width: 302.h,
                  text: "msg_tracking_physical".tr,
                  value: controller.goalTrackExerciseRectangle.value,
                  isRightCheck: true,
                  onChange: (value) {
                    controller.goalTrackExerciseRectangle.value = value;
                  }))
            ]));
  }

  /// Section Widget
  Widget _buildGoalExample4() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.all(22.h),
        decoration: AppDecoration.fillGray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Obx(() => CustomCheckboxButton(
            width: 302.h,
            text: "msg_track_health_condition".tr,
            value: controller.goalTrackHealthRectangle.value,
            isRightCheck: true,
            onChange: (value) {
              controller.goalTrackHealthRectangle.value = value;
            })));
  }

  /// Section Widget
  Widget _buildGoalExample5() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.all(22.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Obx(() => CustomCheckboxButton(
            width: 302.h,
            text: "msg_general_health_awareness".tr,
            value: controller.goalGenHealthRectangle.value,
            isRightCheck: true,
            onChange: (value) {
              controller.goalGenHealthRectangle.value = value;
            })));
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  goalsToHS() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  goalsToHS2() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }
}
