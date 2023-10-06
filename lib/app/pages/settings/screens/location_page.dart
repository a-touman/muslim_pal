import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/pages/prayer_timings/controller/prayer_timings_controller.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import 'package:muslim_pal/app/utils/constants.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/storage_utility.dart';
import '../../../widgets/back_arrow_ar.dart';
import 'manual_location_page.dart';
import 'package:muslim_pal/app/pages/settings/services/location.dart';

class LocationPage extends GetView<ChangeLanguageController> {
   LocationPage({Key? key}) : super(key: key);
  PrayerTimingsController prayerTimingsController=Get.put(PrayerTimingsController());

  @override
  Widget build(BuildContext context) {
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
                            "Location".tr,
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
                        Get.to(() => ManualLocationPage());
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              IconPaths.manual_select,
                              height: 35,
                            ),
                            SizedBox(
                              width: AppStyle.spacing.W.spacingMd,
                            ),
                            Text(
                              "Select Location Manually".tr,
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
                        Locationn().getCurrentLocation();
                         // StorageUtility.saveInStorage('longitude', Locationn().longitude.toString());
                         // StorageUtility.saveInStorage('latitude', Locationn().latitude.toString());
                         prayerTimingsController.fetchData();
                        ChangeLanguageController().locationSelected = false;
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              IconPaths.gps,
                              height: 35,
                            ),
                            SizedBox(
                              width: AppStyle.spacing.W.spacingMd,
                            ),
                            Text(
                              "Allow GPS".tr,
                              style: ChangeLanguageController().getSelected()
                                  ? kSettingsTextStyleEn
                                  : kSettingsTextStyleAr,
                            ),
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
