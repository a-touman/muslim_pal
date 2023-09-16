import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_pal/app/style/app_colors.dart';

class TextStyles {
  TextStyles._();
  static Heading get heading => Heading._();
  static Body get body => Body._();
}

extension HeadingText on Heading {
  TextStyle get h1_36SB => getHeadingSemiBold(36.sp);
  TextStyle get h2_32SB => getHeadingSemiBold(32.sp);
  TextStyle get h3_28SB => getHeadingSemiBold(28.sp);
  TextStyle get h4_25SB => getHeadingSemiBold(25.sp);
  TextStyle get h5_22SB => getHeadingSemiBold(22.sp);
  TextStyle get h6_20SB => getHeadingSemiBold(20.sp);

  TextStyle get h1_36B => getHeadingBold(36.sp);
  TextStyle get h2_32B => getHeadingBold(32.sp);
  TextStyle get h3_28B => getHeadingBold(28.sp);
  TextStyle get h4_25B => getHeadingBold(25.sp);
  TextStyle get h5_22B => getHeadingBold(22.sp);
  TextStyle get h6_20B => getHeadingBold(20.sp);

  TextStyle get h1_36EB => getHeadingExtraBold(36.sp);
  TextStyle get h2_32EB => getHeadingExtraBold(32.sp);
  TextStyle get h3_28EB => getHeadingExtraBold(28.sp);
  TextStyle get h4_25EB => getHeadingExtraBold(25.sp);
  TextStyle get h5_22EB => getHeadingExtraBold(22.sp);
  TextStyle get h6_20EB => getHeadingExtraBold(20.sp);

  TextStyle getHeadingSemiBold(double fontSize) {
    return TextStyle(
        fontFamily: FontsFamily.effraTrialSemiBold,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        fontSize: fontSize);
  }

  TextStyle getHeadingBold(double fontSize) {
    return TextStyle(
        fontFamily: FontsFamily.effraTrialBold,
        fontWeight: FontWeight.w700,
        color: AppColors.black,
        fontSize: fontSize);
  }

  TextStyle getHeadingExtraBold(double fontSize) {
    return TextStyle(
        fontFamily: FontsFamily.effraTrialXBold,
        fontWeight: FontWeight.w800,
        color: AppColors.black,
        fontSize: fontSize);
  }
}

extension BodyText on Body {
  TextStyle get body_18R => getBodyRegular(18.sp);
  TextStyle get body_16R => getBodyRegular(16.sp);
  TextStyle get body_14R => getBodyRegular(14.sp);
  TextStyle get body_12R => getBodyRegular(12.sp);

  TextStyle get body_18B => getBodyBold(18.sp);
  TextStyle get body_16B => getBodyBold(16.sp);
  TextStyle get body_14B => getBodyBold(14.sp);
  TextStyle get body_12B => getBodyBold(12.sp);

  TextStyle get body_18UL => getBodyUnderlined(18.sp);
  TextStyle get body_16UL => getBodyUnderlined(16.sp);
  TextStyle get body_14UL => getBodyUnderlined(14.sp);
  TextStyle get body_12UL => getBodyUnderlined(12.sp);

  TextStyle getBodyRegular(double fontSize) {
    return TextStyle(
        fontFamily: FontsFamily.effraTrialRegular,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
        fontSize: fontSize);
  }

  TextStyle getBodyBold(double fontSize) {
    return TextStyle(
        fontFamily: FontsFamily.effraTrialBold,
        fontWeight: FontWeight.w700,
        color: AppColors.black,
        fontSize: fontSize);
  }

  TextStyle getBodyUnderlined(double fontSize) {
    return TextStyle(
        fontFamily: FontsFamily.effraTrialRegular,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
        color: AppColors.black,
        fontSize: fontSize);
  }
}

class Heading {
  Heading._();
}

class Body {
  Body._();
}

class FontsFamily {
  FontsFamily._();

  static String get quranFont => 'Quran Font';
  static String get effraTrialRegular => 'Effra Trial Regular';
  static String get effraTrialItalic => 'Effra Trial Italic';
  static String get effraTrialHairline => 'Effra Trial Hairline';
  static String get effraTrialHairlineItalic => 'Effra Trial Hairline Italic';
  static String get effraTrialThin => 'Effra Trial Thin';
  static String get effraTrialThinItalic => 'Effra Trial Thin Italic';
  static String get effraTrialLight => 'Effra Trial Light';
  static String get effraTrialLightItalic => 'Effra Trial Light Italic';
  static String get effraTrialMedium => 'Effra Trial Medium';
  static String get effraTrialMediumItalic => 'Effra Trial Medium Italic';
  static String get effraTrialSemiBold => 'Effra Trial SemiBold';
  static String get effraTrialSemiBoldItalic => 'Effra Trial SemiBold Italic';
  static String get effraTrialBold => 'Effra Trial Bold';
  static String get effraTrialBoldItalic => 'Effra Trial Bold Italic';
  static String get effraTrialXBold => 'Effra Trial XBold';
  static String get effraTrialXBoldItalic => 'Effra Trial XBold Italic';
  static String get effraTrialBlack => 'Effra Trial Black';
  static String get effraTrialBlackItalic => 'Effra Trial Black Italic';
  static String get effraVFTrialRegular => 'Effra VF Trial Regular';
  static String get effraVFTrialRegularItalic =>
      'Effra VF Trial Regular Italic';
}
