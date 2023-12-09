import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/trafficlighthomescreen_screen/models/trafficlighthomescreen_model.dart';

/// A controller class for the TrafficlighthomescreenScreen.
///
/// This class manages the state of the TrafficlighthomescreenScreen, including the
/// current trafficlighthomescreenModelObj
class TrafficlighthomescreenController extends GetxController {
  Rx<TrafficlighthomescreenModel> trafficlighthomescreenModelObj =
      TrafficlighthomescreenModel().obs;
}
