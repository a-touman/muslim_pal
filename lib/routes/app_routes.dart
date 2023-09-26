part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const FIRST_SCREEN = Paths.HOME;
}

class Paths {
  static const LAUNCH = "/";
  static const HOME = "/home";
  static const CALENDAR = "/calendar";
  static const AYAHDETAIL = "/ayahdetail";
  static const PRAYER_TIMINGS = "/prayer_timings";
  static const SETTINGS = "/settings";
}
