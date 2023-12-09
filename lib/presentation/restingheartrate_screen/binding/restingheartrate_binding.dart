import '../controller/restingheartrate_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RestingheartrateScreen.
///
/// This class ensures that the RestingheartrateController is created when the
/// RestingheartrateScreen is first loaded.
class RestingheartrateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestingheartrateController());
  }
}
