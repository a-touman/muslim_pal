// FILE 6 (duaa_box.dart)

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/duaa/screens/duaa_info.dart';

import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';

class DuaaBox extends StatelessWidget {
  final String counter;
  final String duaaText;
  final String category;

  DuaaBox({
    required this.counter,
    required this.duaaText,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          DuaaInfo(
            duaaText: duaaText,
            category: category, // Pass the category to DuaaInfo
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppStyle.spacing.H.spacingXlg,
          horizontal: AppStyle.spacing.W.spacingLg,
        ),
        decoration: BoxDecoration(
          borderRadius: AppStyle.corners.lgBorder,
          color: AppColors.secondary,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: AppStyle.spacing.H.spacingXxs,
                    horizontal: AppStyle.spacing.W.spacingLg,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: AppStyle.corners.xxlgBorder,
                    color: AppColors.buttonIconBackground,
                  ),
                  child: Text(
                    counter.tr,
                    style: TextStyle(
                      fontFamily: FontsFamily.effraTrialBold,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: AppStyle.spacing.H.spacingXs,
            ),
            Text(
              duaaText.tr,
              style: TextStyles.body.b_16R.textColor,
            ),
          ],
        ),
      ),
    );
  }
}
