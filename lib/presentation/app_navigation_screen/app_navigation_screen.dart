import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "trafficLightHomeScreen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trafficlighthomescreenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "signUp".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "forgotPassword".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotpasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "initAcctSetup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.initacctsetupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "doctorSelection".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.doctorselectionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "goalSelection".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.goalselectionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "homeScreen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homescreenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "accountSettings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountsettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "wellnessReport".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wellnessreportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "restingHeartRate".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.restingheartrateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "breath".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.breathScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "skinTemperature".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.skintemperatureScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "viewProfile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.viewprofileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "editProfile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editprofileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "changeLoginDetails".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.changelogindetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "notificationSettings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationsettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "dataAndStorage".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dataandstorageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "liveChat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.livechatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "support".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.supportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "signIn".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signinScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "wellnessReportShare".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.wellnessreportshareScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "changePassword".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changepasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "wellnessReportDownloaded".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.wellnessreportdownloadedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "changePasswordSuccess".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.changepasswordsuccessScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
