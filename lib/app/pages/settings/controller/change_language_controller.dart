import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../utils/storage_utility.dart';

class ChangeLanguageController extends GetxController {
  RxString selected = languages.keys.first.obs;

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
  }

  /// find the current language code that the app is using whether it is from storage or deviceLocale
  String getCurrentLanguageCode() {
    String currentLanguage = StorageUtility.readKey('lang') == null
        ? Get.deviceLocale!.languageCode
        : StorageUtility.readKey('lang')!;

    return currentLanguage;
  }
}

// for the view
//List<Widget> languagesList(BuildContext ctx) {
//
//   return Controller.languages.keys.map((e) {
//     return Theme(
//       data: Theme.of(ctx).copyWith(
//         unselectedWidgetColor: AppColors.dullBlackColor.withOpacity(0.15),
//       ),
//       child: RadioListTile<String>(
//         value: e,
//         groupValue: _controller.selected.value,
//         title: Text(e),
//         activeColor: AppColors.lightGreenColor,
//         onChanged: (value) {
//           _controller.selected.value = value ?? "English";
//           String languageKey = _controller.selected.value;
//           String langCode = Controller.languages[languageKey] ?? 'en';
//           _controller.changeLang(langCode);
//         },
//       ),
//     );
//   }).toList();
// }
// -----------------------------------------
// Expanded(
// child: ListView(
// children: languagesList(context),
// ),
// ),
