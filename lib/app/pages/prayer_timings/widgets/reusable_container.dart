import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';

class ReusableContainer extends StatelessWidget {
  final String texts;
  final String prayer;
  final String startTime;
  final Gradient bgColor;
  final String smallText;
  final String secondaryTime;
  final String mosqueColor;
  final String subtractColor;

  ReusableContainer({
    required this.bgColor,
    required this.prayer,
    required this.startTime,
    required this.texts,
    required this.smallText,
    required this.secondaryTime,
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
                  padding: ChangeLanguageController().getSelected()
                      ? EdgeInsets.only(
                          left: 20.0,
                          top: 20.0,
                          right: 20.0,
                          bottom: 65,
                        )
                      : EdgeInsets.only(
                          left: 20.0,
                          top: 20.0,
                          right: 20.0,
                          bottom: 45,
                        ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: ChangeLanguageController().getSelected()
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: Column(
                          children: <Widget>[
                            Text(
                              texts.tr,
                              style: TextStyles.body.b_14R.textColor,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        alignment: ChangeLanguageController().getSelected()
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: Text(
                          prayer.tr,
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
                                startTime.tr,
                                style: TextStyles.heading.h3_28B,
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                smallText.tr,
                                style: TextStyles.body.b_12B.subTextColor,
                              ),
                              Text(
                                secondaryTime.tr,
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
