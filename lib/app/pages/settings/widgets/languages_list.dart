import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../style/app_colors.dart';
import '../controller/change_language_controller.dart';

List<Widget> languagesList(BuildContext context) {
  var controller = Get.find<ChangeLanguageController>();

  return ChangeLanguageController.languages.keys.map((e) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.black26.withOpacity(0.15),
      ),
      child: Transform.scale(
        scale: 1.5,
        child: RadioListTile<String>(
          value: e,
          groupValue: controller.selected.value,
          title: Text(
            e,
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 15.0,
              color: AppTextColors.headlines,
            ),
          ),
          activeColor: Colors.deepOrangeAccent,
          contentPadding: EdgeInsets.only(bottom: 5, left: 63, right: 63),
          onChanged: (value) {
            controller.selected.value = value ?? "English";
            String languageKey = controller.selected.value;
            String langCode =
                ChangeLanguageController.languages[languageKey] ?? 'en';
            controller.changeLang(langCode);
          },
        ),
      ),
    );
  }).toList();
}
