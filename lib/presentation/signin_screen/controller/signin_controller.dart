import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/signin_screen/models/signin_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SigninScreen.
///
/// This class manages the state of the SigninScreen, including the
/// current signinModelObj
class SigninController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  Rx<SigninModel> signinModelObj = SigninModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
  }
}
