import '../../../core/app_export.dart';

/// This class defines the variables used in the [initacctsetup_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InitacctsetupModel {
  Rx<List<String>> radioList = Rx(["lbl_male", "lbl_female", "lbl_other"]);
}
