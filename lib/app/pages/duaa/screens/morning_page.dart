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

class MorningPage extends GetView<DuaaController> {
  const MorningPage({Key? key}) : super(key: key);

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
                            "Morning Duaa".tr,
                            style: TextStyles.heading.h3_28SB,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "All praise is for Allah who gave us life after having taken it from us and unto Him is the resurrection.",
                              duaInfo: SettingsView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'None has the right to be worshipped except Allah , alone without associate, to Him belongs sovereignty and praise and He is over all things wholly capable. How perfect Allah is, and all praise is for Allah, and none has the right to be worshipped except Allah, Allah is the greatest and there is no power nor might except with Allah, The Most High, The Supreme. O my Lord forgive me.',
                              duaInfo: LocationPage(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'All praise is for Allah who restored to me my health and returned my soul and has allowed me to remember Him.',
                              duaInfo: PrayerTimingsView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "In the name of Allah with whose name nothing is harmed on earth nor in the heavens and He is The All-Hearing, The All-Knowing.",
                              duaInfo: LanguagesPage(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "I take refuge in Allah's perfect words from the evil He has created.",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "O Allah, You are my Lord, none has the right to be worshipped except You, You created me and I am Your servant and I abide to Your covenant and promise as best I can, I take refuge in You from the evil of which I have committed. I acknowledge Your favour upon me and I acknowledge my sin, so forgive me, for verily none can forgive sin except You.",
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
