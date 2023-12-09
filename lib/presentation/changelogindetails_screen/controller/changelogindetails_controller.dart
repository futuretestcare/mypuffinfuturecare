import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/changelogindetails_screen/models/changelogindetails_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChangelogindetailsScreen.
///
/// This class manages the state of the ChangelogindetailsScreen, including the
/// current changelogindetailsModelObj
class ChangelogindetailsController extends GetxController {
  TextEditingController changeUsernameController = TextEditingController();

  TextEditingController changeEmailController = TextEditingController();

  TextEditingController changePasswordController = TextEditingController();

  TextEditingController newPasswordController = TextEditingController();

  TextEditingController newPasswordController1 = TextEditingController();

  Rx<ChangelogindetailsModel> changelogindetailsModelObj =
      ChangelogindetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    changeUsernameController.dispose();
    changeEmailController.dispose();
    changePasswordController.dispose();
    newPasswordController.dispose();
    newPasswordController1.dispose();
  }
}
