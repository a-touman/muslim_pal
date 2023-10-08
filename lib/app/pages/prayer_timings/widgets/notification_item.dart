import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/prayer_timings/controller/prayer_timings_controller.dart';
import '../../../style/text_themes.dart';

class NotificationItem extends StatelessWidget {
  PrayerTimingsController prayerTimingsController = Get.find<
      PrayerTimingsController>();
  late final CrossAxisAlignment alignments;
  late final String texts;
  late final String time;

  NotificationItem({
    required this.alignments,
    required this.texts,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: alignments,
          children: <Widget>[
            Text(
              texts.tr,
              style: TextStyles.body.b_16R.textColor,
            ),
            Obx(() {
              return Text(
                prayerTimingsController.getFajr(),
                style: TextStyles.heading.h4_25B,
              );
            }),
          ],
        ),
      ),
    );
  }
}

class NotificationItem2 extends StatelessWidget {
  PrayerTimingsController prayerTimingsController = Get.find<
      PrayerTimingsController>();
  late final CrossAxisAlignment alignments;
  late final String texts;
  late final String time;

  NotificationItem2({
    required this.alignments,
    required this.texts,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: alignments,
          children: <Widget>[
            Text(
              texts.tr,
              style: TextStyles.body.b_16R.textColor,
            ),
            Obx(() {
              return Text(
                prayerTimingsController.getMaghrib(),
                style: TextStyles.heading.h4_25B,
              );
            }),
          ],
        ),
      ),
    );
  }
}
