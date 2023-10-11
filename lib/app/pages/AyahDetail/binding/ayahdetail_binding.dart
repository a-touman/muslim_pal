import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/AyahDetail/controller/ayah_controller.dart';

class AyahDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => AyahDetailController());
  }
}
