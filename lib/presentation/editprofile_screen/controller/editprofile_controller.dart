import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/editprofile_screen/models/editprofile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditprofileScreen.
///
/// This class manages the state of the EditprofileScreen, including the
/// current editprofileModelObj
class EditprofileController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController heightController = TextEditingController();

  TextEditingController weightController = TextEditingController();

  TextEditingController healthConditionController = TextEditingController();

  Rx<EditprofileModel> editprofileModelObj = EditprofileModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateController.dispose();
    heightController.dispose();
    weightController.dispose();
    healthConditionController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in editprofileModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    editprofileModelObj.value.dropdownItemList.refresh();
  }
}
