import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';

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
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Get.to(() => duaPage);
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: AppStyle.corners.xxlgBorder,
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 42,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
