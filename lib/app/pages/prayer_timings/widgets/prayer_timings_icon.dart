import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';

class PrayerTimings extends StatelessWidget {
  final String prayerIcon;
  final String prayer;
  final String prayerTime;
  final String bellActivity;
  late final String amOrPm;

  PrayerTimings({
    required this.prayerIcon,
    required this.prayer,
    required this.prayerTime,
    required this.bellActivity,
    required this.amOrPm,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Row(
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
                      prayer.tr,
                      style: TextStyle(
                        fontFamily: FontsFamily.effraTrialRegular,
                        fontWeight: FontWeight.w500,
                        color: AppTextColors.headlines,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      prayerTime.tr,
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
                    Text(
                      amOrPm.tr,
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
                    SvgPicture.asset(bellActivity),
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
