import 'package:get/get.dart';

import '../controllers/no_internet_access_controller.dart';

class NoInternetAccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoInternetAccessController>(
      () => NoInternetAccessController(),
    );
  }
}
