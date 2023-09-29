import 'package:flutter/material.dart';

import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';

class DuaaBoxSimple extends StatelessWidget {
  late final String content;

  DuaaBoxSimple({
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppStyle.corners.lgBorder,
        color: AppColors.secondary,
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppStyle.spacing.H.spacingXlg,
        horizontal: AppStyle.spacing.W.spacingLg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            content,
            style: TextStyles.body.b_16R.textColor,
          ),
        ],
      ),
    );
  }
}
