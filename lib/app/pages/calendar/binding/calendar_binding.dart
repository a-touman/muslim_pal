import 'package:get/get.dart';

import '../../settings/controller/change_language_controller.dart';
import '../controller/calendar_controller.dart';

class CalendarPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => CalendarController());
    Get.put(() => ChangeLanguageController());
  }
}
