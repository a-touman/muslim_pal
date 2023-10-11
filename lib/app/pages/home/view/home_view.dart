import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/calendar/controller/calendar_controller.dart';
import 'package:muslim_pal/app/pages/calendar/view/calendar_view.dart';
import 'package:muslim_pal/app/pages/duaa/view/duaa_view.dart';
import 'package:muslim_pal/app/pages/home/controller/home_controller.dart';
import 'package:muslim_pal/app/pages/prayer_timings/controller/prayer_timings_controller.dart';
import 'package:muslim_pal/app/pages/prayer_timings/view/prayer_timings_view.dart';
import 'package:muslim_pal/app/pages/settings/view/settings_view.dart';
import 'package:muslim_pal/app/style/style.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import 'package:muslim_pal/app/utils/constants.dart';

import '../../../style/text_themes.dart';
import '../widgets/home_page_widget.dart';

class HomeView extends StatelessWidget {
  HomeController homeController = Get.find<HomeController>();
  PrayerTimingsController prayerTimingsController =
      Get.put(PrayerTimingsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 72.0, 24.0, 162),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Muslim Pal',
              textDirection: TextDirection.ltr,
              style: TextStyles.heading.h3_28SB,
            ),
            const SizedBox(height: 24.0),
            Expanded(
              child: Container(
                decoration: kDetailDecoration,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, right: 16.0, left: 16.0, bottom: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Verse of the day'.tr,
                        style: TextStyles.heading.h5_22B,
                      ),
                      const SizedBox(height: 8.0),
                      Obx(() {
                        final ayahText = homeController.getAyahText();
                        final surahNo = homeController.getSurahNo();
                        final verseNo = homeController.getVerseNo();
                        final lineCount = homeController.countLines(
                          ayahText,
                          TextStyles.body.b_16R,
                          MediaQuery.of(context).size.width,
                        );
                        return Seemore(
                            ayahText: ayahText,
                            lineCount: lineCount,
                            homeController: homeController,
                            Surahnum: surahNo,
                            Versenum: verseNo);
                      }),
                      SizedBox(
                        height: 8,
                      ),
                      Obx(() {
                        return Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            '${"Surah".tr} ${homeController.getSurahNo()}, ${"Verse".tr} ${homeController.getVerseNo()}',
                            style: TextStyles.body.b_12B.subTextColor,
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppStyle.spacing.H.spacingXlg,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        prayerTimingsController.fetchData();
                        Get.to(() => PrayerTimingsView());
                      },
                      child: ReusableContainer(
                        content: IconContent(
                          icon: SvgPicture.asset(IconPaths.clock),
                          label: "Prayer\nTimes".tr,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppStyle.spacing.W.spacingMd,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(CalendarView());
                      },
                      child: ReusableContainer(
                        content: IconContent(
                          label: 'Calendar\nConverter'.tr,
                          icon: SvgPicture.asset(IconPaths.rewind),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppStyle.spacing.H.spacingMd,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => DuaaView());
                      },
                      child: ReusableContainer(
                        content: IconContent(
                          icon: SvgPicture.asset(IconPaths.dua),
                          label: 'Duaa'.tr,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppStyle.spacing.W.spacingMd,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const SettingsView());
                      },
                      child: ReusableContainer(
                        content: IconContent(
                          icon: SvgPicture.asset(IconPaths.settings),
                          label: 'Settings'.tr,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
