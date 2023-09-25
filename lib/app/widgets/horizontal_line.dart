import 'package:flutter/material.dart';
import '../style/app_colors.dart';

class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.dividers,
      thickness: 2,
    );
  }
}
