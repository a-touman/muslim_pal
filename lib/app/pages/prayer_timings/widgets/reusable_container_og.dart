import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muslim_pal/app/pages/prayer_timings/widgets/custom_row.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/translations/en.dart';

import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';

class ReusableContainer extends StatelessWidget {
  final String texts;
  final String prayer;
  final String startTime;
  final Gradient bgColor;
  final String smallText;
  final String endTime;
  final bool am_or_pm;
  final Row addRow;

  ReusableContainer(
      {required this.bgColor,
      required this.prayer,
      required this.startTime,
      required this.texts,
      required this.endTime,
      required this.am_or_pm,
      required this.smallText,
      required this.addRow});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          left: 25.0,
          top: 28.0,
          right: 43.0,
          bottom: 48.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          gradient: bgColor,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SvgPicture.asset(
                IconPaths.background_mosque,
                alignment: Alignment.bottomRight,
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                        texts,
                        style: TextStyles.body.b_14R.textColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    prayer,
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          startTime,
                          style: TextStyles.heading.h3_28B,
                        ),
                        Text(
                          am_or_pm ? "AM" : "PM",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: AppTextColors.subText,
                            fontSize: 16.0,
                            fontFamily: FontsFamily.effraTrialBlack,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    TimeRow(
                      smallText: smallText,
                      endTime: endTime,
                      am_or_pm: am_or_pm,
                    ),
                    addRow
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TimeRow extends StatelessWidget {
  const TimeRow({
    super.key,
    required this.smallText,
    required this.endTime,
    required this.am_or_pm,
  });

  final String smallText;
  final String endTime;
  final bool am_or_pm;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          smallText,
          style: TextStyles.body.b_12B.subTextColor,
        ),
        Text(
          endTime,
          style: TextStyles.body.b_12B,
        ),
        Text(
          am_or_pm ? "am" : "pm",
          style: TextStyles.body.b_12B,
        ),
      ],
    );
  }
}
