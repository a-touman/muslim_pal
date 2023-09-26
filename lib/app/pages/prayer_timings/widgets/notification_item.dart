import 'package:flutter/material.dart';
import '../../../style/text_themes.dart';

class NotificationItem extends StatelessWidget {
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
              texts,
              style: TextStyles.body.b_16B.textColor,
            ),
            Text(
              "$time $amOrPm",
              style: TextStyles.body.b_16B,
            ),
          ],
        ),
      ),
    );
  }
}
