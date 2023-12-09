import '../controller/initacctsetup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InitacctsetupScreen.
///
/// This class ensures that the InitacctsetupController is created when the
/// InitacctsetupScreen is first loaded.
class InitacctsetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InitacctsetupController());
  }
}
