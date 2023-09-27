import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/pages/calendar/view/calendar_view.dart';
import 'package:muslim_pal/app/pages/prayer_timings/view/prayer_timings_view.dart';
import 'package:muslim_pal/app/pages/settings/screens/languages_page.dart';
import 'package:muslim_pal/app/pages/settings/screens/location_page.dart';
import 'package:muslim_pal/app/pages/settings/view/settings_view.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../controller/duaa_controller.dart';
import '../widgets/daily_duaa_container.dart';

class TravellingPage extends GetView<DuaaController> {
  const TravellingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            "Travelling Duaa".tr,
                            style: TextStyles.heading.h3_28SB,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'O Allah, I ask You for knowledge that is of benefit , a good provision , and deeds that will be accepted.',
                              duaInfo: SettingsView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'O Allah , I ask You for Paradise and seek Your protection from the Fire.',
                              duaInfo: LocationPage(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'Glory is to Allah, praise is to Allah, Allah is the Most Great!',
                              duaInfo: PrayerTimingsView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'Our Lord! Grant us the good of this world and the Hereafter, and protect us from the torment of the Fire.',
                              duaInfo: LanguagesPage(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'My Lord! Make me and those [believers] of my descendants keep up prayer. Our Lord!',
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'My Lord! Make me and those [believers] of my descendants keep up prayer. Our Lord!',
                              duaInfo: CalendarView(),
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
