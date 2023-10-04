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
  late final String amOrPm;

  NotificationItem({
    required this.alignments,
    required this.texts,
    required this.time,
    required this.amOrPm,
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
              style: TextStyles.body.b_16B.textColor,
            ),
            Obx(() {
              return Text(
                prayerTimingsController.getFajr(),
                style: TextStyles.body.b_16B,
              );
            }),
          ],
        ),
      ),
    );
  }
}

class NotificationItem1 extends StatelessWidget {
  PrayerTimingsController prayerTimingsController = Get.find<
      PrayerTimingsController>();
  late final CrossAxisAlignment alignments;
  late final String texts;
  late final String time;
  late final String amOrPm;

  NotificationItem1({
    required this.alignments,
    required this.texts,
    required this.time,
    required this.amOrPm,
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
              style: TextStyles.body.b_16B.textColor,
            ),
            Obx(() {
              return Text(
                prayerTimingsController.getMaghrib(),
                style: TextStyles.body.b_16B,
              );
            }),
          ],
        ),
      ),
    );
  }
}
