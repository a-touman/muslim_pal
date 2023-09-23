import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';

class LocationInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(
            IconPaths.location,
            width: 35,
            height: 35,
          ),
          SizedBox(width: AppStyle.spacing.W.spacingXs),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Al Masjid an Nabawi",
                    textAlign: TextAlign.start,
                    style: TextStyles.heading.h5_22B,
                  ),
                ),
                SizedBox(height: AppStyle.spacing.H.spacingXxs),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Medina, Saudi Arabia",
                    textAlign: TextAlign.start,
                    style: TextStyles.body.b_16B.subTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
