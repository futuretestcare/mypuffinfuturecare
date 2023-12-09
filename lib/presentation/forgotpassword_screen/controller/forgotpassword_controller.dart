import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/forgotpassword_screen/models/forgotpassword_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgotpasswordScreen.
///
/// This class manages the state of the ForgotpasswordScreen, including the
/// current forgotpasswordModelObj
class ForgotpasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgotpasswordModel> forgotpasswordModelObj = ForgotpasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
