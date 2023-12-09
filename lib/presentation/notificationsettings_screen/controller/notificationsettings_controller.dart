import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/notificationsettings_screen/models/notificationsettings_model.dart';

/// A controller class for the NotificationsettingsScreen.
///
/// This class manages the state of the NotificationsettingsScreen, including the
/// current notificationsettingsModelObj
class NotificationsettingsController extends GetxController {
  Rx<NotificationsettingsModel> notificationsettingsModelObj =
      NotificationsettingsModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  Rx<bool> isSelectedSwitch3 = false.obs;

  Rx<bool> isSelectedSwitch4 = false.obs;

  Rx<bool> isSelectedSwitch5 = false.obs;
}
