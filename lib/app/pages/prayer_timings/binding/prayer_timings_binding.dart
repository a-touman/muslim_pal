import 'package:get/get.dart';
import '../controller/prayer_timings_controller.dart';

class PrayerTimingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => PrayerTimingsController());
  }
}
