import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  TextEditingController otpController = TextEditingController(text: 'qwerqwer');
  @override
  void onClose() {
    otpController.dispose();
    super.onClose();
  }
}
