import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/doctorselection_screen/models/doctorselection_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DoctorselectionScreen.
///
/// This class manages the state of the DoctorselectionScreen, including the
/// current doctorselectionModelObj
class DoctorselectionController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<DoctorselectionModel> doctorselectionModelObj = DoctorselectionModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
