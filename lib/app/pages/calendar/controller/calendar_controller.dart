import 'package:get/get.dart';
import 'package:hijri/hijri_calendar.dart';
class CalendarController extends GetxController {
  final GselectedDay = 1.obs;
  final GselectedMonth = "January".obs;
  final GselectedYear = 2000.obs;
  final HselectedDay = 1.obs;
  final HselectedMonth = "Muharram".obs;
  final HselectedYear = 2000.obs;
  final formattedDate=''.obs;
  bool lastClickedGregorian=false;
  List<String> monthList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  List<String> hijrimonthList=[
    "Muharram",
    "Safar",
    "Rabi I",
    "Rabi II",
    "Jumada I",
    "Jumada II",
    "Rajab",
    "Shaaban",
    "Ramadan",
    "Shawwal",
    "Dhu al-Qidah",
    "Dhu al-Hijjah",
  ];
  int getMonthIndex(String monthName, List<String> monthList) {
    return monthList.indexOf(monthName);
  }

  void toHijri(){
    var hDate=
    HijriCalendar.fromDate(DateTime(GselectedYear.value,getMonthIndex(GselectedMonth.value, monthList),GselectedDay.value));
    HselectedYear.value=hDate.hYear;
    HselectedDay.value=hDate.hDay;
    HselectedMonth.value=hijrimonthList[hDate.hMonth];
    formattedDate.value=hDate.toFormat("dd MMMM yyyy");
  }
  void toGregorian(){
    var gDate=HijriCalendar();
    var g_date=gDate.hijriToGregorian(HselectedYear.value, getMonthIndex(HselectedMonth.value, hijrimonthList), HselectedDay.value);
    GselectedYear.value=g_date.year;
    GselectedDay.value=g_date.day;
    GselectedMonth.value=monthList[g_date.month];

  }

  void displayHijri(int day,String month,int year){
     formattedDate.value= "$day, $month $year";

  }

  void GsetSelectedDay(int value) {
    GselectedDay.value = value;
  }

  void GsetSelectedMonth(String value) {

    GselectedMonth.value = value;
  }



  void GsetSelectedYear(int value) {
    GselectedYear.value = value;
  }
  void HsetSelectedDay(int value) {
    HselectedDay.value = value;
  }

  void HsetSelectedMonth(String value) {
    HselectedMonth.value = value;
  }



  void HsetSelectedYear(int value) {
    HselectedYear.value = value;
  }



  @override
  void onInit() {
    super.onInit();
  }
}
