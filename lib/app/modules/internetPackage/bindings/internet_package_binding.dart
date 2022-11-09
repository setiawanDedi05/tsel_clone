import 'package:get/get.dart';

import '../controllers/internet_package_controller.dart';

class InternetPackageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InternetPackageController>(
      () => InternetPackageController(),
    );
  }
}
