import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/calendar/view/calendar_view.dart';
import 'package:muslim_pal/app/pages/launch/binding/launch_binding.dart';

import '../app/pages/calendar/binding/calendar_binding.dart';
import '../app/pages/launch/view/launch_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FIRST_SCREEN;

  static final routes = [
    GetPage(
        name: Paths.LAUNCH,
        page: () => const LaunchPage(),
        binding: LaunchPageBinding()),
    GetPage(
        name: Paths.CALENDAR,
        page: () => const CalendarView(),
        binding: CalendarPageBinding()),
  ];
}
