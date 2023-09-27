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

class NightPage extends GetView<DuaaController> {
  const NightPage({Key? key}) : super(key: key);

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
                            "Night Duaa".tr,
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
                                  'O Allah, protect me from Your punishment on the day Your servants are resurrected.',
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'In Your name O Allah, I live and die.               ',
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'How perfect Allah is.                                        ',
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'All praise is for Allah.                                       ',
                              duaInfo: CalendarView(),
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  'Allah is the greatest.                                         ',
                              duaInfo: CalendarView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "[I take refuge with Allah from the accursed devil.] Allah! There is no god but He - the Living, The Self-subsisting, Eternal. No slumber can seize Him nor sleep. His are all things in the heavens and on earth. Who is there can intercede in His presence except as he permitteth? He knoweth what (appeareth to His creatures as) before or after or behind them. Nor shall they encompass aught of his knowledge except as He willeth. His throne doth extend over the heavens and on earth, and He feeleth no fatigue in guarding and preserving them, for He is the Most High, the Supreme.",
                              duaInfo: SettingsView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  '[In the name of Allah, most benevolent, ever-merciful.] Say: He is Allah, (the) One. Allah-us-Samad (The Self-Sufficient Master, Whom all creatures need, He neither eats nor drinks). He begets not, nor was He begotten, and there is none co-equal or comparable unto Him.',
                              duaInfo: LocationPage(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  '[In the name of Allah, most benevolent, ever-merciful.] Say: I seek refuge with (Allah) the Lord of the daybreak, from the evil of what He has created, and from the evil of the darkening (night) as it comes with its darkness; (or the moon as it sets or goes away), and from the evil of the witchcrafts when they blow in the knots, and from the evil of the envier when he envies.',
                              duaInfo: PrayerTimingsView(),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            DailyDuaaContainer(
                              counter: '5',
                              duaText:
                                  "[In the name of Allah, most benevolent, ever-merciful.] Say: I seek refuge with (Allah) the Lord of mankind,The King of mankind, The llah (God) of mankind, from the evil of the whisperer (devil who whispers evil in the hearts of men) who withdraws (from his whispering in one's heart after one remembers Allah), who whispers in the breasts of mankind, of jinns and men.",
                              duaInfo: LanguagesPage(),
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
