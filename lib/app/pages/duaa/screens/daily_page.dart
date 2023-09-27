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

class DailyPage extends GetView<DuaaController> {
  const DailyPage({Key? key}) : super(key: key);

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
                            "Daily Duaa".tr,
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
                                  'O Allah, I ask You for knowledge that is of benefit, a good provision, and deeds that will be accepted.',
                              duaInfo: SettingsView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'O Allah, I ask You for Paradise and seek Your protection from the Fire.',
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
                                  "In the name of Allah. O Allah I seek refuge in You from the male female evil and Jinn’s.",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "O Allah, I seek forgiveness and pardon from You, All Praise be to Allah, who removed the difficulty from me and gave me ease (relief).",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "I testify that there is no one worthy of worship besides Allah. He is all by Himself and has no partner and I testify that Muhammad is Allah's messenger (Rasool).",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "Praise is to Allah Who has given me this food, and sustained me with it though I was unable to do it and powerless.",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "Oh Allah! Lord of this perfect call and this prayer to be established, grant Muhammad Al-wasilah (a high and special place in Jannah) and Al fadheelah (a rank above the rest of creation) and raise him to a praised platform which you have promised him.",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "In the Name of Allah, and peace and blessings be upon the Messenger of Allah, O Allah, open the doors of mercy.",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "In the Name of Allah, and peace and blessings be upon the Messenger of Allah. O Allah, I ask for Your favour, O Allah, verily I seek from You, Your bounty.",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "I depart with Allah's name, relying on Him. It is Allah who saves us from sins with His guidance (the ability to do so).",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "In the Name of Allah we enter, in the Name of Allah we leave and upon our Lord we depend.",
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "O Allah You are The One Who pardons greatly, and loves to pardon, so pardon me",
                              duaInfo: CalendarView(),
                            ),
                          ],
                        ),
                      ),
                    )
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
