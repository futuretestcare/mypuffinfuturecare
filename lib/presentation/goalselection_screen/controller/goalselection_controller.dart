import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/goalselection_screen/models/goalselection_model.dart';

/// A controller class for the GoalselectionScreen.
///
/// This class manages the state of the GoalselectionScreen, including the
/// current goalselectionModelObj
class GoalselectionController extends GetxController {
  Rx<GoalselectionModel> goalselectionModelObj = GoalselectionModel().obs;

  Rx<bool> goalPerscribedRectangle = false.obs;

  Rx<bool> weightManagement = false.obs;

  Rx<bool> goalTrackExerciseRectangle = false.obs;

  Rx<bool> goalTrackHealthRectangle = false.obs;

  Rx<bool> goalGenHealthRectangle = false.obs;
}
