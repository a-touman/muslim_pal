part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const FIRST_SCREEN = Paths.PRAYER_TIMINGS;
}

class Paths {
  static const LAUNCH = "/";
  static const HOME = "/home";
  static const CALENDAR = "/calendar";
  static const PRAYER_TIMINGS = "/prayer_timings";
}
