import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:muslim_pal/app/pages/prayer_timings/model/timings_model.dart';
import 'package:muslim_pal/app/pages/prayer_timings/repository/remote_services.dart';

class PrayerTimingsController extends GetxController {
  var isLoading = false.obs;
  Rx<TimingsModel> mod=TimingsModel().obs;
  final RemoteServices remoteServices=RemoteServices();

  @override
  void onInit() {
    super.onInit();
    fetchData();
    print('called prayer');
  }
  fetchData() async {
    try {
      isLoading(true);
      final timingsModel = await remoteServices.fetchData();
      mod.value = timingsModel;
      print(mod.value!.data!.timings!.asr);
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }
}
