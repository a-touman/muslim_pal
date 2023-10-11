import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/duaa/controller/duaa_controller.dart';
import 'package:muslim_pal/app/pages/duaa/screens/duaa_info.dart';

import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';



class DuaaBox extends StatelessWidget {
  final String duaaText;
  final String category;
  final int index;

  DuaaBox({
    required this.duaaText,
    required this.category,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          DuaaInfo(
            duaaText: duaaText,
            category: category,
            index: index,
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
                    "5".tr,
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
