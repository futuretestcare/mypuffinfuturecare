import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/homescreen_screen/models/homescreen_model.dart';

/// A controller class for the HomescreenScreen.
///
/// This class manages the state of the HomescreenScreen, including the
/// current homescreenModelObj
class HomescreenController extends GetxController {
  Rx<HomescreenModel> homescreenModelObj = HomescreenModel().obs;
}
