import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:muslim_pal/app/pages/duaa/controller/duaa_controller.dart';

import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
DuaaController duaaController=Get.put(DuaaController());
class DuaaIconContainer extends StatelessWidget {
  late final String iconPicture;
  late final String iconName;
  late final Widget duaPage;

  DuaaIconContainer(
      {required this.iconPicture,
      required this.iconName,
      required this.duaPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => duaPage);
      duaaController.calledDaily=true;
      print(duaaController.calledDaily);

      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: AppStyle.corners.xxlgBorder,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
              ),
              child: Container(
                child: Column(
                  children: [
                    SvgPicture.asset(iconPicture),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXs,
                    ),
                    Text(
                      iconName.tr,
                      style: TextStyles.heading.h5_22B,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
