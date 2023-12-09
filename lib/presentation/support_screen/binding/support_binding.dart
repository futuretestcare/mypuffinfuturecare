import '../controller/support_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SupportScreen.
///
/// This class ensures that the SupportController is created when the
/// SupportScreen is first loaded.
class SupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SupportController());
  }
}
