import 'controller/wellnessreportshare_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_leading_image.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/appbar_title.dart';
import 'package:mypuffinfuturecare/widgets/app_bar/custom_app_bar.dart';
import 'package:mypuffinfuturecare/widgets/custom_icon_button.dart';

class WellnessreportshareScreen
    extends GetWidget<WellnessreportshareController> {
  const WellnessreportshareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 800.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 53.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      ImageConstant.imgTrafficlighthomescreen),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildAppBar(),
                            SizedBox(height: 6.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 30.h, right: 36.h),
                                child: _buildSkinTempContainer(
                                    skinTemperatureText:
                                        "lbl_blood_pressure".tr,
                                    threeHundredFortySevenText:
                                        "lbl_120_80".tr)),
                            SizedBox(height: 18.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 30.h, right: 36.h),
                                child: _buildSkinTempContainer(
                                    skinTemperatureText:
                                        "msg_skin_temperature".tr,
                                    threeHundredFortySevenText: "lbl_34_7".tr)),
                            SizedBox(height: 18.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 30.h, right: 36.h),
                                child: _buildSkinTempContainer(
                                    skinTemperatureText:
                                        "msg_motion_rotation".tr,
                                    threeHundredFortySevenText:
                                        "lbl_stationary".tr)),
                            SizedBox(height: 18.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 30.h, right: 36.h),
                                child: _buildSkinTempContainer(
                                    skinTemperatureText:
                                        "msg_resting_heart_rate".tr,
                                    threeHundredFortySevenText:
                                        "lbl_60_bpm".tr)),
                            SizedBox(height: 18.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 30.h, right: 36.h),
                                child: _buildSkinTempContainer(
                                    skinTemperatureText: "lbl_blood_oxygen".tr,
                                    threeHundredFortySevenText: "lbl_98".tr)),
                            SizedBox(height: 18.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 30.h, right: 36.h),
                                child: _buildSkinTempContainer(
                                    skinTemperatureText:
                                        "msg_humidity_dallas".tr,
                                    threeHundredFortySevenText: "lbl_60".tr)),
                            SizedBox(height: 29.v),
                            _buildDownloadTextIcon(),
                            SizedBox(height: 42.v)
                          ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(top: 1.v),
                          decoration: AppDecoration.fillOnPrimary,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Spacer(), _buildSharePopup()])))
                ]))));
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

  /// Section Widget
  Widget _buildDownloadTextIcon() {
    return Container(
        margin: EdgeInsets.only(left: 30.h, right: 36.h),
        padding: EdgeInsets.symmetric(horizontal: 70.h, vertical: 11.v),
        decoration: AppDecoration.outlineOnPrimary4
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgDownloadicon,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(left: 3.h, top: 1.v, bottom: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_download_pdf".tr,
                      style: CustomTextStyles.titleLargeWhiteA700_1))
            ]));
  }

  /// Section Widget
  Widget _buildSharePopup() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.outlineOnPrimary9
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text("lbl_share".tr,
                          style:
                              CustomTextStyles.titleLargeNotoSansOnPrimary))),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.only(left: 26.h, right: 29.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 20.v),
                            child: Column(children: [
                              CustomIconButton(
                                  height: 44.adaptSize,
                                  width: 44.adaptSize,
                                  padding: EdgeInsets.all(14.h),
                                  decoration: IconButtonStyleHelper.fillGray,
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgSelectdownloadbutton)),
                              SizedBox(height: 12.v),
                              Text("lbl_download".tr,
                                  style: CustomTextStyles.bodySmallGray50001)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(bottom: 20.v),
                            child: _buildSelectEmail(
                                dynamicProperty2: "lbl_doctor".tr)),
                        Column(children: [
                          CustomIconButton(
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                              padding: EdgeInsets.all(14.h),
                              decoration:
                                  IconButtonStyleHelper.fillErrorContainer,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSelectemergencybutton)),
                          SizedBox(height: 12.v),
                          SizedBox(
                              width: 57.h,
                              child: Text("msg_emergency_contact".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmallGray50001
                                      .copyWith(height: 1.64)))
                        ]),
                        Padding(
                            padding: EdgeInsets.only(bottom: 20.v),
                            child: _buildSelectEmail(
                                dynamicProperty2: "lbl_email".tr))
                      ])),
              SizedBox(height: 4.v),
              Divider(color: appTheme.gray300),
              SizedBox(height: 13.v),
              Text("lbl_cancel".tr,
                  style: CustomTextStyles.bodyMediumManropeGray50001)
            ]));
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

  /// Common widget
  Widget _buildSelectEmail({required String dynamicProperty2}) {
    return Column(children: [
      CustomIconButton(
          height: 44.adaptSize,
          width: 44.adaptSize,
          padding: EdgeInsets.all(14.h),
          decoration: IconButtonStyleHelper.fillBlueTL22,
          child:
              CustomImageView(imagePath: ImageConstant.imgSelectemailbutton)),
      SizedBox(height: 12.v),
      Text(dynamicProperty2,
          style: CustomTextStyles.bodySmallGray50001
              .copyWith(color: appTheme.gray50001))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
