import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController(text: '1234');
  var checkController = false.obs;
  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}
