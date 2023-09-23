import 'package:flutter/material.dart';

import '../../../style/text_themes.dart';

class CustomRow extends StatelessWidget {
  late final String smallText;
  late final String endTime;
  late final bool am_or_pm;

  CustomRow({
    required this.endTime,
    required this.am_or_pm,
    required this.smallText,
  });

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
