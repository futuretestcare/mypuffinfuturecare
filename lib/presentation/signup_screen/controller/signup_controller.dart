import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupScreen.
///
/// This class manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
  }
}
