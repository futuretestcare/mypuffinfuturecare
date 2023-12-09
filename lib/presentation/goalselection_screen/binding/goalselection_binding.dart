import '../controller/goalselection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GoalselectionScreen.
///
/// This class ensures that the GoalselectionController is created when the
/// GoalselectionScreen is first loaded.
class GoalselectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoalselectionController());
  }
}
