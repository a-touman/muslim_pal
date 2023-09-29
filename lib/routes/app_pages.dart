import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/AyahDetail/view/ayahdetail_view.dart';
import 'package:muslim_pal/app/pages/calendar/binding/calendar_binding.dart';
import 'package:muslim_pal/app/pages/calendar/view/calendar_view.dart';
import 'package:muslim_pal/app/pages/launch/binding/launch_binding.dart';
import 'package:muslim_pal/app/pages/AyahDetail/binding/ayahdetail_binding.dart';
import '../app/pages/duaa/binding/duaa_binding.dart';
import '../app/pages/duaa/view/duaa_view.dart';
import '../app/pages/home/binding/home_binding.dart';
import '../app/pages/home/view/home_view.dart';
import '../app/pages/launch/view/launch_view.dart';
import '../app/pages/prayer_timings/binding/prayer_timings_binding.dart';
import '../app/pages/prayer_timings/view/prayer_timings_view.dart';
import '../app/pages/settings/binding/settings_binding.dart';
import '../app/pages/settings/view/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.FIRST_SCREEN;

  static final routes = [
    GetPage(
        name: Paths.LAUNCH,
        page: () => LaunchPage(),
        binding: LaunchPageBinding()),
    GetPage(
      name: Paths.HOME,
      page: () => HomeView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: Paths.AYAHDETAIL,
      page: () => AyahDetailView(
        ayahText: '',
        VerseNum: null,
        SurahNum: null,
      ),
      binding: AyahDetailBinding(),
    ),
    GetPage(
      name: Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsPageBinding(),
    ),
    GetPage(
      name: Paths.PRAYER_TIMINGS,
      page: () => const PrayerTimingsView(),
      binding: PrayerTimingsPageBinding(),
    ),
    GetPage(
      name: Paths.CALENDAR,
      page: () => CalendarView(),
      binding: CalendarPageBinding(),
    ),
    GetPage(
      name: Paths.DUAA,
      page: () => DuaaView(),
      binding: DuaaPageBinding(),
    ),
  ];
}
