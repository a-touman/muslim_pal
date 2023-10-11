part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const FIRST_SCREEN = Paths.HOME;
}

class Paths {
  static const HOME = "/";
  static const CALENDAR = "/calendar";
  static const AYAHDETAIL = "/ayahdetail";
  static const PRAYER_TIMINGS = "/prayer_timings";
  static const SETTINGS = "/settings";
  static const DUAA = "/duaa";
}
