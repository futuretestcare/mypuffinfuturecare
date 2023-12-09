import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/dataandstorage_screen/models/dataandstorage_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DataandstorageScreen.
///
/// This class manages the state of the DataandstorageScreen, including the
/// current dataandstorageModelObj
class DataandstorageController extends GetxController {
  TextEditingController termAndConditionController = TextEditingController();

  Rx<DataandstorageModel> dataandstorageModelObj = DataandstorageModel().obs;

  @override
  void onClose() {
    super.onClose();
    termAndConditionController.dispose();
  }
}
