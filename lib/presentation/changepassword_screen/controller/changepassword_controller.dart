import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/changepassword_screen/models/changepassword_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChangepasswordScreen.
///
/// This class manages the state of the ChangepasswordScreen, including the
/// current changepasswordModelObj
class ChangepasswordController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  Rx<ChangepasswordModel> changepasswordModelObj = ChangepasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
  }
}
