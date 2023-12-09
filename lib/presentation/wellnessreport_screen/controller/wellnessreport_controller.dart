import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/wellnessreport_screen/models/wellnessreport_model.dart';

/// A controller class for the WellnessreportScreen.
///
/// This class manages the state of the WellnessreportScreen, including the
/// current wellnessreportModelObj
class WellnessreportController extends GetxController {
  Rx<WellnessreportModel> wellnessreportModelObj = WellnessreportModel().obs;
}
