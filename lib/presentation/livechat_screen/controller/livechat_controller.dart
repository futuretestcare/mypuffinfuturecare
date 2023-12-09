import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/livechat_screen/models/livechat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LivechatScreen.
///
/// This class manages the state of the LivechatScreen, including the
/// current livechatModelObj
class LivechatController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<LivechatModel> livechatModelObj = LivechatModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
