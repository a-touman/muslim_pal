import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:muslim_pal/app/pages/home/controller/home_controller.dart';
import '../../../utils/storage_utility.dart';
import '../services/location.dart';

class ChangeLanguageController extends GetxController {
  Location loca = Location();
  RxString lat = "".obs;
  RxString lon = "".obs;
  RxString selected = languages.keys.first.obs;
  RxString Mcountry = ''.obs;
  RxString Mcity = ''.obs;
  RxString Mstate = ''.obs;
  RxString country = ''.obs;
  RxString city = ''.obs;
  RxString state = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loca.getCurrentLocation();
    selected = languages.keys
        .firstWhere((k) => languages[k] == getCurrentLanguageCode(),
            orElse: () => 'English')
        .obs;
  }

  static const Map<String, String> languages = {
    'English': 'en',
    'العربية': 'ar',
  };

  void onRadioChange(String value) {
    selected.value = value;
  }
  /// change the language of the app and store it in local storage for subsequent retrieval
  void changeLang(String langCode) {
    Locale locale = Locale(langCode);
    StorageUtility.saveInStorage('lang', langCode);
    Get.updateLocale(locale);
    HomeController homeController=Get.find<HomeController>();
    homeController.fetchData();
  }

  /// find the current language code that the app is using whether it is from storage or deviceLocale
  String getCurrentLanguageCode() {
    String currentLanguage = StorageUtility.readKey('lang') == null
        ? Get.deviceLocale!.languageCode
        : StorageUtility.readKey('lang')!;

    return currentLanguage;
  }

  bool getSelected() {
    if (getCurrentLanguageCode() == 'en') {
      return true;
    } else {
      return false;
    }
  }

  String? getLatitude() {
    return StorageUtility.viewKey('latitude');
  }

  String? getLongitude() {
    return StorageUtility.viewKey('longitude');
  }
}
