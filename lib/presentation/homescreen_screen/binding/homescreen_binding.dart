import '../controller/homescreen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomescreenScreen.
///
/// This class ensures that the HomescreenController is created when the
/// HomescreenScreen is first loaded.
class HomescreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomescreenController());
  }
}
