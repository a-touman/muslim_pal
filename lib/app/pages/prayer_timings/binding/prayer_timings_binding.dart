import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/calendar/controller/calendar_controller.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';

import '../controller/prayer_timings_controller.dart';

class PrayerTimingsPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrayerTimingsController());

  }
}
