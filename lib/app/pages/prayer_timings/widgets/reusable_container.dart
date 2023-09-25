import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/translations/en.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';

class ReusableContainer extends StatelessWidget {
  final String texts;
  final String prayer;
  final String startTime;
  final Gradient bgColor;
  final String smallText;
  final String endTime;
  final bool amOrPm;
  final String mosqueColor;
  final String subtractColor;

  ReusableContainer({
    required this.bgColor,
    required this.prayer,
    required this.startTime,
    required this.texts,
    required this.smallText,
    required this.endTime,
    required this.amOrPm,
    required this.mosqueColor,
    required this.subtractColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: AppStyle.corners.xxlgBorder,
          gradient: bgColor,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Positioned(
              bottom: 0.0,
              right: 65.0,
              child: SvgPicture.asset(
                subtractColor,
                alignment: Alignment.bottomRight,
                height: 42,
              ),
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(24.0)),
                    child: SvgPicture.asset(
                      mosqueColor,
                      alignment: Alignment.bottomRight,
                      height: 130,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    top: 28.0,
                    right: 43.0,
                    bottom: 65.0,
                  ),
                  child: Column(
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
                                amOrPm ? "AM".tr : "PM".tr,
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
                          Row(
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
                                amOrPm ? "am".tr : "pm".tr,
                                style: TextStyles.body.b_12B,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
