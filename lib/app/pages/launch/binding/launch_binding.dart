import 'package:get/get.dart';

import '../controller/launch_controller.dart';

class LaunchPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => LaunchPageController());
  }
}
