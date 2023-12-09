import 'controller/trafficlighthomescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';

class TrafficlighthomescreenScreen
    extends GetWidget<TrafficlighthomescreenController> {
  const TrafficlighthomescreenScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 29.h, vertical: 27.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 2.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgTrafficlightpuffinlogo,
                          height: 48.v,
                          width: 167.h,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 2.h)),
                      SizedBox(height: 18.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text("lbl_hello".tr,
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 5.v),
                      _buildFiftyOneRow(),
                      SizedBox(height: 13.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgTrafficlightgreenicon,
                                        height: 29.adaptSize,
                                        width: 29.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 10.v, bottom: 12.v)),
                                    Container(
                                        width: 190.h,
                                        margin: EdgeInsets.only(left: 10.h),
                                        child: Text("msg_everything_seems".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyLargeExoGray50001
                                                .copyWith(height: 1.63)))
                                  ]))),
                      SizedBox(height: 13.v),
                      _buildFiftyTwoRow(),
                      SizedBox(height: 11.v),
                      _buildMetricBox1Row(),
                      SizedBox(height: 8.v),
                      _buildMetricBox2Row(),
                      SizedBox(height: 7.v),
                      _buildMetricBox3Row(),
                      SizedBox(height: 7.v),
                      _buildMetricBox4Row(),
                      SizedBox(height: 22.v),
                      _buildBottomNavBarRow()
                    ])))));
  }

  /// Section Widget
  Widget _buildFiftyOneRow() {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_john_doe".tr, style: CustomTextStyles.displaySmallCyan600),
          CustomImageView(
              imagePath: ImageConstant.imgWellnessreportbutton,
              height: 46.adaptSize,
              width: 46.adaptSize,
              margin: EdgeInsets.only(top: 3.v),
              onTap: () {
                tlhsToWellness();
              })
        ]));
  }

  /// Section Widget
  Widget _buildFiftyTwoRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_today".tr, style: CustomTextStyles.bodyLargeExoOnPrimary),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgTraffictogglebutton,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                tlhsToHS();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgRefreshbutton,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(left: 17.h))
        ]));
  }

  /// Section Widget
  Widget _buildMetricBox1Row() {
    return GestureDetector(
        onTap: () {
          tlhsToHeart();
        },
        child: Container(
            margin: EdgeInsets.only(left: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 22.v),
            decoration: AppDecoration.outlineOnPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgMetricicon1,
                      height: 15.v,
                      width: 17.h,
                      margin: EdgeInsets.only(top: 15.v, bottom: 19.v)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 14.h, top: 14.v, bottom: 16.v),
                      child: Text("lbl_heart_rate".tr,
                          style: theme.textTheme.bodyMedium)),
                  Spacer(flex: 63),
                  Text("lbl_78".tr, style: theme.textTheme.displaySmall),
                  Spacer(flex: 36),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 19.v, right: 2.h, bottom: 12.v),
                      child:
                          Text("lbl_bpm".tr, style: theme.textTheme.bodyMedium))
                ])));
  }

  /// Section Widget
  Widget _buildMetricBox2Row() {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 21.v),
        decoration: AppDecoration.outlineOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMetricicon2,
              height: 18.v,
              width: 17.h,
              margin: EdgeInsets.symmetric(vertical: 16.v)),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 16.v, bottom: 16.v),
              child: Text("lbl_steps".tr, style: theme.textTheme.bodyMedium)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_700".tr, style: theme.textTheme.displaySmall)),
          Padding(
              padding: EdgeInsets.fromLTRB(28.h, 19.v, 4.h, 13.v),
              child: Text("lbl_min".tr, style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Section Widget
  Widget _buildMetricBox3Row() {
    return GestureDetector(
        onTap: () {
          tlhsToTemp();
        },
        child: Container(
            margin: EdgeInsets.only(left: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.v),
            decoration: AppDecoration.outlineOnPrimary1
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 18.v,
                  width: 15.h,
                  margin: EdgeInsets.symmetric(vertical: 16.v)),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 16.v, bottom: 16.v),
                  child: Text("lbl_temperature".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary)),
              Spacer(flex: 53),
              Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child:
                      Text("lbl_39".tr, style: theme.textTheme.displaySmall)),
              Spacer(flex: 46),
              Padding(
                  padding:
                      EdgeInsets.only(top: 19.v, right: 10.h, bottom: 14.v),
                  child: Text("lbl_c".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary))
            ])));
  }

  /// Section Widget
  Widget _buildMetricBox4Row() {
    return GestureDetector(
        onTap: () {
          tlhsToBreathe();
        },
        child: Container(
            margin: EdgeInsets.only(left: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 21.v),
            decoration: AppDecoration.outlineOnPrimary2
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMetricicon4,
                  height: 17.v,
                  width: 18.h,
                  margin: EdgeInsets.only(top: 17.v, bottom: 18.v)),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, top: 15.v, bottom: 18.v),
                  child: Text("lbl_breathe".tr,
                      style: theme.textTheme.bodyMedium)),
              Spacer(flex: 65),
              Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child:
                      Text("lbl_42".tr, style: theme.textTheme.displaySmall)),
              Spacer(flex: 34),
              Padding(
                  padding:
                      EdgeInsets.only(top: 17.v, right: 10.h, bottom: 16.v),
                  child: Text("lbl_rr".tr, style: theme.textTheme.bodyMedium))
            ])));
  }

  /// Section Widget
  Widget _buildBottomNavBarRow() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 1.h, right: 14.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        tlhsbottombarHome();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgHomeicon,
                                height: 22.v,
                                width: 24.h),
                            SizedBox(height: 7.v),
                            Text("lbl_home".tr,
                                style: theme.textTheme.labelLarge)
                          ]))),
                  GestureDetector(
                      onTap: () {
                        tlhsbottombarNotif();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
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
                        tlhsbotbarProfile();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgProfileicon,
                                height: 24.v,
                                width: 22.h),
                            SizedBox(height: 6.v),
                            Text("lbl_profile".tr,
                                style: theme.textTheme.bodySmall)
                          ]))),
                  GestureDetector(
                      onTap: () {
                        tlhsbotbarSupport();
                      },
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSupporticon,
                            height: 24.v,
                            width: 23.h),
                        SizedBox(height: 7.v),
                        Text("lbl_support".tr, style: theme.textTheme.bodySmall)
                      ])),
                  GestureDetector(
                      onTap: () {
                        tlhsbotbarSettings();
                      },
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSearchGray700,
                            height: 24.v,
                            width: 23.h),
                        SizedBox(height: 7.v),
                        Text("lbl_settings".tr,
                            style: theme.textTheme.bodySmall)
                      ]))
                ])));
  }

  /// Navigates to the wellnessreportScreen when the action is triggered.
  tlhsToWellness() {
    Get.toNamed(
      AppRoutes.wellnessreportScreen,
    );
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  tlhsToHS() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the restingheartrateScreen when the action is triggered.
  tlhsToHeart() {
    Get.toNamed(
      AppRoutes.restingheartrateScreen,
    );
  }

  /// Navigates to the skintemperatureScreen when the action is triggered.
  tlhsToTemp() {
    Get.toNamed(
      AppRoutes.skintemperatureScreen,
    );
  }

  /// Navigates to the breathScreen when the action is triggered.
  tlhsToBreathe() {
    Get.toNamed(
      AppRoutes.breathScreen,
    );
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  tlhsbottombarHome() {
    Get.toNamed(
      AppRoutes.homescreenScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  tlhsbottombarNotif() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the viewprofileScreen when the action is triggered.
  tlhsbotbarProfile() {
    Get.toNamed(
      AppRoutes.viewprofileScreen,
    );
  }

  /// Navigates to the livechatScreen when the action is triggered.
  tlhsbotbarSupport() {
    Get.toNamed(
      AppRoutes.livechatScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  tlhsbotbarSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
