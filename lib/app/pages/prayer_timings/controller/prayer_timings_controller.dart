import 'package:get/get.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:muslim_pal/app/pages/calendar/controller/calendar_controller.dart';
import 'package:muslim_pal/app/pages/prayer_timings/model/timings_model.dart';
import 'package:muslim_pal/app/pages/prayer_timings/repository/remote_services.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/utils/storage_utility.dart';

class PrayerTimingsController extends GetxController {
  CalendarController calendarController = Get.put(CalendarController());
  ChangeLanguageController changeLanguageController =
      Get.put(ChangeLanguageController());

  var isLoading = false.obs;
  Rx<TimingsModel> mod = TimingsModel(code: null, status: '', data: null).obs;
  final RemoteServices remoteServices = RemoteServices();
  final StorageUtility storageUtility = StorageUtility();
  String currentTime = "${DateTime.now().hour}:${DateTime.now().minute}";
  RxString monthName = DateFormat('MMMM').format(DateTime.now()).obs;
  RxString dayName = DateFormat('EEE').format(DateTime.now()).obs;
  RxInt day = DateTime.now().day.obs;
  RxInt month = DateTime.now().month.obs;
  int year = DateTime.now().year;

  RxString before = ''.obs;
  RxString after = ''.obs;
  RxString beforeTime = ''.obs;
  RxString nextTime = ''.obs;

  String displayHijriDate() {
    var hDate = HijriCalendar.fromDate(DateTime(year, month.value, day.value));
    String date =
        "${calendarController.hijriMonthList[hDate.hMonth - 1].tr} ${hDate.hDay.toString().tr}, ${hDate.hYear.toString().tr}";
    return date;
  }

  void updateDayName() {
    dayName.value =
        DateFormat('EEE').format(DateTime(year, month.value, day.value));
  }

  void updateMonthName() {
    monthName.value =
        DateFormat('MMMM').format(DateTime(year, month.value, day.value));
  }

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void incValue() {
    day += 1;
    updateDayName();
    updateMonthName();
    fetchData();
  }

  void decValue() {
    day -= 1;
    updateDayName();
    updateMonthName();
    fetchData();
  }

  void limitDay() {
    int maxDaysInMonth = DateTime(year, month.value + 1, 0).day;
    if (day.value < 1) {
      month -= 1;
      day.value = DateTime(year, month.value + 1, 0).day;
    } else if (day.value > maxDaysInMonth) {
      month += 1;
      day.value = 1;
    }
  }

  void fetchData() async {
    try {
      isLoading(true);
      final timingsModel = await remoteServices.fetchData(
        year,
        month.value,
        day.value,
        changeLanguageController.lat.value,
        changeLanguageController.lon.value,
      );

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

    return timeInMinutes ?? 00;
  }

  String getFajr() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data?.timings?.fajr ?? 'Loading';
    } else {
      return '00:00';
    }
  }

  String getDuhur() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data!.timings!.dhuhr ?? 'Loading';
    } else {
      return '00:00';
    }
  }

  String getAsr() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data!.timings!.asr ?? 'Loading';
    } else {
      return '00:00';
    }
  }

  String getMaghrib() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data!.timings!.maghrib ?? 'Loading';
    } else {
      return '00:00';
    }
  }

  String getIsha() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data!.timings!.isha ?? 'Loading';
    } else {
      return '00:00';
    }
  }

  void displayPrayer() {
    if (convertTimeStringToInt(getFajr()) <
            convertTimeStringToInt(currentTime) &&
        convertTimeStringToInt(currentTime) <
            convertTimeStringToInt(getDuhur())) {
      before.value = 'Fajr';
      after.value = 'Duhur';
      beforeTime.value = getFajr();
      nextTime.value = getDuhur();
    } else if (convertTimeStringToInt(getDuhur()) <
            convertTimeStringToInt(currentTime) &&
        convertTimeStringToInt(currentTime) <
            convertTimeStringToInt(getAsr())) {
      before.value = 'Duhur';
      after.value = 'Asr';
      beforeTime.value = getDuhur();
      nextTime.value = getAsr();
    } else if (convertTimeStringToInt(getAsr()) <
            convertTimeStringToInt(currentTime) &&
        convertTimeStringToInt(currentTime) <
            convertTimeStringToInt(getMaghrib())) {
      before.value = 'Asr';
      after.value = 'Maghrib';
      beforeTime.value = getAsr();
      nextTime.value = getMaghrib();
    } else if (convertTimeStringToInt(getMaghrib()) <
            convertTimeStringToInt(currentTime) &&
        convertTimeStringToInt(currentTime) <
            convertTimeStringToInt(getIsha())) {
      before.value = 'Maghrib';
      after.value = 'Isha';
      beforeTime.value = getMaghrib();
      nextTime.value = getIsha();
    } else if (convertTimeStringToInt(getIsha()) <
            convertTimeStringToInt(currentTime) ||
        convertTimeStringToInt(currentTime) <
            convertTimeStringToInt(getFajr())) {
      before.value = 'Isha';
      after.value = 'Fajr';
      beforeTime.value = getIsha();
      nextTime.value = getFajr();
    }
  }
}
