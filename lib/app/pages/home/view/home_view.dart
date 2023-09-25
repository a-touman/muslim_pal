import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/calendar/view/calendar_view.dart';
import 'package:muslim_pal/app/pages/home/controller/home_controller.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import 'package:muslim_pal/app/utils/constants.dart';
import '../../../style/text_themes.dart';
import '../widgets/home_page_widget.dart';
class HomeView extends StatelessWidget {
  HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 72.0, 24.0, 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Muslim Pal',
              style: TextStyles.heading.h3_28SB,
            ),
            SizedBox(height: 24.0),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: kDetailDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Verse of the day',
                          style: TextStyles.heading.h5_22B,
                        ),
                        const SizedBox(height: 8.0),
                        Obx(() {
                          final ayahText = homeController.getAyahText();
                          final Surahnum=homeController.getSurahno();
                          final Versenum=homeController.getVerseNo();
                          final lineCount = homeController.countLines(
                            ayahText,
                            TextStyles.body.b_16R,
                            MediaQuery.of(context).size.width,
                          );
                          return Expanded(
                            child: Container(
                              child: Seemore(ayahText: ayahText, lineCount: lineCount, homeController: homeController, Surahnum: Surahnum, Versenum: Versenum),
                            ),
                          );
                        }),
                        const SizedBox(height: 8.0),
                      Obx(() {
                        return Text('Surah ${homeController.getSurahno()}, Verse ${homeController.getVerseNo()}',style: TextStyles.body.b_12B.subTextColor,);
                      })
                      ],
                    ),

                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: ReusableContainer(
                        content: IconContent(
                          icon: SvgPicture.asset(IconPaths.clock),
                          label: 'Prayer\nTimes',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print('get to calendar');
                        Get.to(CalendarView());
                      },
                      child: ReusableContainer(
                        content: IconContent(
                          label: 'Calendar Converter',
                          icon: SvgPicture.asset(IconPaths.rewind),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: ReusableContainer(
                        content: IconContent(
                          icon: SvgPicture.asset(IconPaths.dua),
                          label: 'Duaa',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: ReusableContainer(
                        content: IconContent(
                          icon: SvgPicture.asset(IconPaths.settings),
                          label: 'Settings',
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





