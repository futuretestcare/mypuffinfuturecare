import 'controller/wellnessreportdownloaded_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';
import 'package:mypuffinfuturecare/widgets/custom_icon_button.dart';

class WellnessreportdownloadedScreen
    extends GetWidget<WellnessreportdownloadedController> {
  const WellnessreportdownloadedScreen({Key? key}) : super(key: key);

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
                child: SizedBox(
                    width: double.maxFinite,
                    child: SizedBox(
                        height: 800.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.h, top: 53.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildAppBar(),
                                        SizedBox(height: 6.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: _buildSkinTempContainer(
                                                skinTemperatureText:
                                                    "lbl_blood_pressure".tr,
                                                threeHundredFortySevenText:
                                                    "lbl_120_80".tr)),
                                        SizedBox(height: 18.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: _buildSkinTempContainer(
                                                skinTemperatureText:
                                                    "msg_skin_temperature".tr,
                                                threeHundredFortySevenText:
                                                    "lbl_34_7".tr)),
                                        SizedBox(height: 18.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: _buildSkinTempContainer(
                                                skinTemperatureText:
                                                    "msg_motion_rotation".tr,
                                                threeHundredFortySevenText:
                                                    "lbl_stationary".tr)),
                                        SizedBox(height: 18.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: _buildSkinTempContainer(
                                                skinTemperatureText:
                                                    "msg_resting_heart_rate".tr,
                                                threeHundredFortySevenText:
                                                    "lbl_60_bpm".tr)),
                                        SizedBox(height: 18.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: _buildSkinTempContainer(
                                                skinTemperatureText:
                                                    "lbl_blood_oxygen".tr,
                                                threeHundredFortySevenText:
                                                    "lbl_98".tr)),
                                        SizedBox(height: 18.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: _buildSkinTempContainer(
                                                skinTemperatureText:
                                                    "msg_humidity_dallas".tr,
                                                threeHundredFortySevenText:
                                                    "lbl_60".tr)),
                                        SizedBox(height: 29.v),
                                        CustomElevatedButton(
                                            height: 50.v,
                                            text: "lbl_download_pdf".tr,
                                            margin: EdgeInsets.only(left: 10.h),
                                            leftIcon: Container(
                                                margin:
                                                    EdgeInsets.only(right: 5.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgDownloadicon,
                                                    height: 22.adaptSize,
                                                    width: 22.adaptSize)))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 95.h, vertical: 315.v),
                                  decoration: AppDecoration.fillOnPrimary,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 18.v),
                                        Container(
                                            margin:
                                                EdgeInsets.only(right: 10.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 29.h,
                                                vertical: 14.v),
                                            decoration: AppDecoration
                                                .outlineOnPrimary10
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder4),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 44.adaptSize,
                                                      width: 44.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(12.h),
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgDownloadconfirmimage)),
                                                  SizedBox(height: 12.v),
                                                  Text(
                                                      "msg_report_downloaded"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumOnPrimary),
                                                  SizedBox(height: 10.v),
                                                  CustomElevatedButton(
                                                      height: 36.v,
                                                      text: "lbl_return".tr,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 6.h),
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .fillPrimary,
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .bodyMediumManropeWhiteA700)
                                                ]))
                                      ])))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 43.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_wellness_report".tr,
            margin: EdgeInsets.only(left: 6.h)));
  }

  /// Common widget
  Widget _buildSkinTempContainer({
    required String skinTemperatureText,
    required String threeHundredFortySevenText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 80.h, vertical: 7.v),
        decoration: AppDecoration.outlineOnPrimary3
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Text(skinTemperatureText,
                  style: theme.textTheme.titleLarge!
                      .copyWith(color: appTheme.gray700)),
              Padding(
                  padding: EdgeInsets.only(left: 46.h),
                  child: Text(threeHundredFortySevenText,
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: appTheme.gray700)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
