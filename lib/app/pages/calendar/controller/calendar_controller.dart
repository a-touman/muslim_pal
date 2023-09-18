import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:muslim_pal/app/pages/calendar/model/model.dart';

import '../../../../routes/app_pages.dart';
import '../repository/repo.dart';

class CalendarController extends GetxController {
  var text = "swcsinh";

  QuranAyah? ayah = null;

  updateText() {
    text = "hsvs";

    update(["myId"]);

    Get.toNamed(Paths.CALENDAR);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    ayah = Repo.getRandomAyah();
  }
}
