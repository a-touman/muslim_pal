import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import 'package:muslim_pal/app/utils/utils.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/constants.dart';
import '../screens/languages_page.dart';
import '../screens/location_page.dart';

class SettingsPage extends GetView<ChangeLanguageController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChangeLanguageController changeLanguageController =
        Get.put(ChangeLanguageController());

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 72.0,
                right: 24.0,
                bottom: 602.0,
                left: 24.0,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.asset(
                            IconPaths.back_arrow,
                            height: 45,
                          ),
                        ),
                        SizedBox(
                          width: AppStyle.spacing.W.spacingXs,
                        ),
                        Text(
                          "Settings".tr,
                          style: TextStyles.heading.h3_28SB,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppStyle.spacing.H.spacingXxxxlg,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: SvgPicture.asset(
                            IconPaths.group,
                            height: 30,
                          ),
                          onTap: () {
                            Get.to(() => LanguagesPage());
                          },
                        ),
                        SizedBox(
                          width: AppStyle.spacing.W.spacingMd,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(() => LanguagesPage());
                          },
                          child: Text(
                            "Languages".tr,
                            style: kSettingsTextStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppStyle.spacing.H.spacingXlg,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: SvgPicture.asset(
                            IconPaths.location_filled,
                            height: 40,
                          ),
                          onTap: () {
                            Get.to(() => LocationPage());
                          },
                        ),
                        SizedBox(
                          width: AppStyle.spacing.W.spacingSm,
                        ),
                        TextButton(
                          // onPressed: Get.to(LocationPage),
                          onPressed: () {
                            Get.to(() => LocationPage());
                          },
                          child: Text(
                            "Location".tr,
                            style: kSettingsTextStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
