import 'package:get/get.dart';

import '../controller/duaa_controller.dart';

class DuaaPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DuaaController());
  }
}
