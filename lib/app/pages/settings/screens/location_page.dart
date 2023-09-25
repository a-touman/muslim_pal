import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import 'package:muslim_pal/app/utils/constants.dart';
import 'package:muslim_pal/app/utils/utils.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import 'manual_location_page.dart';

class LocationPage extends GetView<ChangeLanguageController> {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                          "Location".tr,
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
                            IconPaths.manual_select,
                            height: 35,
                          ),
                          onTap: () {
                            Get.to(() => ManualLocationPage());
                          },
                        ),
                        SizedBox(
                          width: AppStyle.spacing.W.spacingMd,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(() => ManualLocationPage());
                          },
                          child: Text(
                            "Select Location Manually".tr,
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
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: SvgPicture.asset(
                            IconPaths.gps,
                            height: 35,
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: AppStyle.spacing.W.spacingXlg,
                        ),
                        Text(
                          "Allow GPS".tr,
                          style: kSettingsTextStyle,
                        ),
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
