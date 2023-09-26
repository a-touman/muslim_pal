import 'package:get/get.dart';

import '../controller/prayer_timings_controller.dart';

class PrayerTimingsPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrayerTimingsController());
  }
}
