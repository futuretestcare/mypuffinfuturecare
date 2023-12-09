import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/support_screen/models/support_model.dart';

/// A controller class for the SupportScreen.
///
/// This class manages the state of the SupportScreen, including the
/// current supportModelObj
class SupportController extends GetxController {
  Rx<SupportModel> supportModelObj = SupportModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in supportModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    supportModelObj.value.dropdownItemList.refresh();
  }
}
