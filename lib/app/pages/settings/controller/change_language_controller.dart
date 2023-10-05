import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:muslim_pal/app/pages/home/controller/home_controller.dart';
import '../../../utils/storage_utility.dart';
import '../screens/manual_location_page.dart';

class ChangeLanguageController extends GetxController {
  RxString selected = languages.keys.first.obs;
  RxString country=''.obs;
  RxString city=''.obs;
  RxString state=''.obs;
  bool locationSelected = false;

  @override
  void onInit() {
    super.onInit();

    // find the selected language in full name eg 'English' by using the current langCode and using it to find the key from the languages map
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
