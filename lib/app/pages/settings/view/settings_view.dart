import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/constants.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../screens/languages_page.dart';
import '../screens/location_page.dart';

class SettingsPage extends GetView<ChangeLanguageController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ChangeLanguageController());

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 30.0,
                  right: 24.0,
                  bottom: 24.0,
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
                              child: BackArrow()),
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
                    GestureDetector(
                      onTap: () {
                        Get.to(() => LanguagesPage());
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 5),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              IconPaths.group,
                              height: 30,
                            ),
                            SizedBox(
                              width: AppStyle.spacing.W.spacingMd,
                            ),
                            Text(
                              "Languages".tr,
                              style: ChangeLanguageController().getSelected()
                                  ? kSettingsTextStyleEn
                                  : kSettingsTextStyleAr,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => LocationPage());
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              IconPaths.location_filled,
                              height: 40,
                            ),
                            SizedBox(
                              width: AppStyle.spacing.W.spacingSm,
                            ),
                            Text(
                              "Location".tr,
                              style: ChangeLanguageController().getSelected()
                                  ? kSettingsTextStyleEn
                                  : kSettingsTextStyleAr,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
