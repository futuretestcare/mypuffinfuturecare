import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/settings_screen/models/settings_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingsScreen.
///
/// This class manages the state of the SettingsScreen, including the
/// current settingsModelObj
class SettingsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController subscriptionIconController = TextEditingController();

  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    subscriptionIconController.dispose();
  }
}
