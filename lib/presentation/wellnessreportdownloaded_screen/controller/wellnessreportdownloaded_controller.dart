import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/wellnessreportdownloaded_screen/models/wellnessreportdownloaded_model.dart';

/// A controller class for the WellnessreportdownloadedScreen.
///
/// This class manages the state of the WellnessreportdownloadedScreen, including the
/// current wellnessreportdownloadedModelObj
class WellnessreportdownloadedController extends GetxController {
  Rx<WellnessreportdownloadedModel> wellnessreportdownloadedModelObj =
      WellnessreportdownloadedModel().obs;
}
