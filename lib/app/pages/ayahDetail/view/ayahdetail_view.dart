import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/AyahDetail/controller/ayah_controller.dart';
import 'package:muslim_pal/app/pages/home/view/home_view.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import 'package:muslim_pal/app/utils/constants.dart';

import '../../../style/text_themes.dart';

class AyahDetailView extends GetView<AyahDetailController> {
  late final String ayahText;
  late final int? surahNum;
  late final int? verseNum;

  AyahDetailView(
      {required this.ayahText, required this.surahNum, required this.verseNum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 28, 24, 35),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Muslim Pal',
                  style: TextStyles.heading.h3_28SB,
                ),
                SizedBox(
                  height: 24.0,
                ),
                Container(
                  decoration: kDetailDecoration,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Verse of the day',
                              style: TextStyles.heading.h5_22B,
                            ),
                            FloatingActionButton(
                                onPressed: () {
                                  Get.to(HomeView());
                                },
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                child: SvgPicture.asset(IconPaths.xcircle))
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          ayahText,
                          style: TextStyles.body.b_16B.textColor,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Surah $surahNum, Verse $verseNum")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
