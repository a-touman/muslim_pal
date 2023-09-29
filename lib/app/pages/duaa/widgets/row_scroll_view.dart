import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../style/app_colors.dart';
import 'package:muslim_pal/app/pages/duaa/screens/studying_page.dart';

class RowScrollView extends StatelessWidget {
  final String section;
  final TextStyle styles;
  final double length;

  RowScrollView({
    required this.section,
    required this.styles,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          section.tr,
          style: styles,
        ),
        SizedBox(
          width: length,
          height: 7,
          child: Divider(
            color: AppColors.primary,
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
