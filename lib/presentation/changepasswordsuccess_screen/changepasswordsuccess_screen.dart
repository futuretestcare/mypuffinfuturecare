import 'controller/changepasswordsuccess_controller.dart';
import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ChangepasswordsuccessScreen
    extends GetWidget<ChangepasswordsuccessController> {
  const ChangepasswordsuccessScreen({Key? key})
      : super(
          key: key,
        );

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
                offset: Offset(
                  0,
                  3,
                ),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgTrafficlighthomescreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 44.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 24.v),
                CustomImageView(
                  imagePath: ImageConstant.imgPasschangesuccessicon,
                  height: 122.v,
                  width: 126.h,
                ),
                SizedBox(height: 53.v),
                SizedBox(
                  width: 300.h,
                  child: Text(
                    "msg_you_have_successfully".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        CustomTextStyles.bodyMediumOnPrimaryContainer.copyWith(
                      height: 1.57,
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                CustomElevatedButton(
                  height: 36.v,
                  width: 110.h,
                  text: "lbl_back_to_login2".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.bodyMediumManropeWhiteA700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
