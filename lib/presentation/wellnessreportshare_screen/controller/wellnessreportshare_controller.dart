import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/wellnessreportshare_screen/models/wellnessreportshare_model.dart';

/// A controller class for the WellnessreportshareScreen.
///
/// This class manages the state of the WellnessreportshareScreen, including the
/// current wellnessreportshareModelObj
class WellnessreportshareController extends GetxController {
  Rx<WellnessreportshareModel> wellnessreportshareModelObj =
      WellnessreportshareModel().obs;
}
