import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/app_colors.dart';

const kDarkGradient = LinearGradient(
  begin: Alignment(0, 0),
  end: Alignment.topLeft,
  colors: [
    Color(0xFFF7D0B5),
    Color(0x00FAD4BF), // Transparent color
  ],
  stops: [0.4346, 1.3569],
);

const kLightGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(255, 250, 243, 238),
    Color.fromARGB(255, 250, 243, 238),
  ],
);
BoxDecoration kCombobox = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(width: 1, color: AppColors.primary));

BoxDecoration kDetailDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(24.0),
  gradient: kDarkGradient,
);
BoxDecoration kHDetailDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(24.0),
  gradient: kLightGradient,
);

const kSettingsTextStyleEn = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontSize: 22.0,
  color: AppTextColors.headlines,
);

const kSettingsTextStyleAr = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontSize: 27.0,
  color: AppTextColors.headlines,
);
