import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';

class LocationInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SvgPicture.asset(
          IconPaths.location,
          width: 35,
          height: 35,
        ),
        SizedBox(width: AppStyle.spacing.W.spacingXs),
        Expanded(
          child: Container(
            width: 300,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Al Masjid an Nabawi".tr,
                    textAlign: TextAlign.start,
                    style: TextStyles.heading.h5_22B,
                  ),
                ),
                SizedBox(height: AppStyle.spacing.H.spacingXxs),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Medina, Saudi Arabia".tr,
                    textAlign: TextAlign.start,
                    style: TextStyles.body.b_16B.subTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
