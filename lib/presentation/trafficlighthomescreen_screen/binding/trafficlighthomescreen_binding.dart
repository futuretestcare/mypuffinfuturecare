import '../controller/trafficlighthomescreen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrafficlighthomescreenScreen.
///
/// This class ensures that the TrafficlighthomescreenController is created when the
/// TrafficlighthomescreenScreen is first loaded.
class TrafficlighthomescreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrafficlighthomescreenController());
  }
}
