import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/initacctsetup_screen/models/initacctsetup_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InitacctsetupScreen.
///
/// This class manages the state of the InitacctsetupScreen, including the
/// current initacctsetupModelObj
class InitacctsetupController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController weightController = TextEditingController();

  TextEditingController weightController1 = TextEditingController();

  Rx<InitacctsetupModel> initacctsetupModelObj = InitacctsetupModel().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateController.dispose();
    weightController.dispose();
    weightController1.dispose();
  }
}
