import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:muslim_pal/app/pages/prayer_timings/model/timings_model.dart';
import 'package:muslim_pal/app/pages/prayer_timings/repository/remote_services.dart';

class PrayerTimingsController extends GetxController {
  var isLoading = false.obs;
  Rx<TimingsModel> mod = TimingsModel().obs;
  final RemoteServices remoteServices = RemoteServices();
  String currentTime = "${DateTime.now().hour}:${DateTime.now().minute}";
  RxString before= ''.obs;
  RxString after = ''.obs;
  RxString beforeTime = ''.obs;
  RxString nextTime = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      isLoading(true);
      final timingsModel = await remoteServices.fetchData();
      mod.value = timingsModel;

    } catch (e) {

    } finally {
      isLoading(false);
    }
  }
  int convertTimeStringToInt(String timeString) {
    List<String> parts = timeString.split(':');

    int hours = int.parse(parts[0]);
    int minutes = int.parse(parts[1]);

    int timeInMinutes = hours * 60 + minutes;

    return timeInMinutes??00;
  }

  String getFajr() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data?.timings?.fajr ?? 'lOADING';

    }
    else {
      return '00:00';
    }
  }
  String getDuhur() {
    if (mod.value != null && mod.value.data != null) {

      return mod.value.data!.timings!.dhuhr?? 'lOADING';
    }
    else {
      return '00:00';
    }

  }



  String getAsr() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data!.timings!.asr?? 'lOADING';
    }
    else {
      return '00:00';
    }
  }
  String getMaghrib() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data!.timings!.maghrib?? 'lOADING';
    }
    else {
      return '00:00';
    }
  }
  String getIsha() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data!.timings!.isha?? 'lOADING';
    }
    else {
      return '00:00';
    }
  }

  void displayPrayer (){

    if (convertTimeStringToInt(getFajr()) < convertTimeStringToInt(currentTime) && convertTimeStringToInt(currentTime)  < convertTimeStringToInt(getDuhur())) {

      before.value = 'Fajr';
      after.value = 'Duhur';
      beforeTime.value = getFajr();
      nextTime.value = getDuhur();
    }

    else if (convertTimeStringToInt(getDuhur()) < convertTimeStringToInt(currentTime) && convertTimeStringToInt(currentTime)  < convertTimeStringToInt(getAsr())) {

      before.value = 'Duhur';
      after.value = 'Asr';
      beforeTime.value = getDuhur();
      nextTime.value = getAsr();
    }

    else if (convertTimeStringToInt(getAsr()) < convertTimeStringToInt(currentTime) && convertTimeStringToInt(currentTime)  < convertTimeStringToInt(getMaghrib())) {

      before.value = 'Asr';
      after.value = 'Maghrib';
      beforeTime.value = getAsr();
      nextTime.value = getMaghrib();
    }

    else if (convertTimeStringToInt(getMaghrib()) < convertTimeStringToInt(currentTime) && convertTimeStringToInt(currentTime)  < convertTimeStringToInt(getIsha())) {

      before.value = 'Maghrib';
      after.value = 'Isha';
      beforeTime.value = getMaghrib();
      nextTime.value = getIsha();
    }

    else if (convertTimeStringToInt(getIsha()) < convertTimeStringToInt(currentTime)) {

      before.value = 'Isha';
      after.value = 'Fajr';
      beforeTime.value = getIsha();
      nextTime.value = getFajr();
    }
  }

  void getLocation() {


  }

}
