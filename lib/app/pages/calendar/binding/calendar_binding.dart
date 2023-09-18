import 'package:get/get.dart';

import '../controller/calendar_controller.dart';

class CalendarPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => CalendarController());
  }
}
