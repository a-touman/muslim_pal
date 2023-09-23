
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:muslim_pal/app/pages/AyahDetail/controller/ayah_controller.dart';

class AyahDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => AyahDetailController());
  }
}
