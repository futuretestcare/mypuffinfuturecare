import '../controller/notificationsettings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationsettingsScreen.
///
/// This class ensures that the NotificationsettingsController is created when the
/// NotificationsettingsScreen is first loaded.
class NotificationsettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsettingsController());
  }
}
