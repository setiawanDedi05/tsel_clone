import 'package:get/get.dart';

import '../controllers/internet_s_o_s_controller.dart';

class InternetSOSBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InternetSOSController>(
      () => InternetSOSController(),
    );
  }
}
