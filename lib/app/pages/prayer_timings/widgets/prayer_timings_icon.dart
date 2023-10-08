import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';

class PrayerTimings extends StatelessWidget {
  final String prayerIcon;
  final String prayerName;
  final String? prayerTime;
  final String bellActivity;

  PrayerTimings({
    required this.prayerIcon,
    required this.prayerName,
    required this.prayerTime,
    required this.bellActivity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              prayerIcon.tr,
              width: 35.0,
              height: 35.0,
            ),
            SizedBox(
              width: AppStyle.spacing.W.spacingXs,
            ),
            Text(
              prayerName.tr,
              style: TextStyle(
                fontFamily: FontsFamily.effraTrialRegular,
                fontWeight: FontWeight.w500,
                color: AppTextColors.headlines,
                fontSize: 20,
              ),
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                prayerTime!.tr,
                style: TextStyle(
                  fontFamily: FontsFamily.effraTrialRegular,
                  fontWeight: FontWeight.w500,
                  color: AppTextColors.headlines,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: AppStyle.spacing.W.spacingXs,
              ),
              SizedBox(
                width: AppStyle.spacing.W.spacingXs,
              ),
              SvgPicture.asset(bellActivity),
            ],
          ),
        ),
      ],
    );
  }
}
