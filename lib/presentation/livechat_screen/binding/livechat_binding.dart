import '../controller/livechat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LivechatScreen.
///
/// This class ensures that the LivechatController is created when the
/// LivechatScreen is first loaded.
class LivechatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LivechatController());
  }
}
