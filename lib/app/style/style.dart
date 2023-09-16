import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

const double spacing0 = 0;
const double spacing1 = 4;
const double spacing2 = 8;
const double spacing3 = 12;
const double spacing4 = 16;
const double spacing5 = 20;
const double spacing6 = 24;
const double spacing7 = 32;
const double spacing8 = 40;
const double spacing9 = 48;
const double spacing10 = 56;
const double spacing11 = 64;
const double spacing12 = 72;
const double spacing13 = 80;

///
/// call like this : AppStyle.spacing.H.spacingMd
///
class AppStyle {
  static const spacing = Spacing._();
  static const corners = Corners._();
}

/// padding, margin spacing
class Spacing {
  const Spacing._();
  Height get H => Height._();
  Width get W => Width._();
}

/// corner radius
class Corners {
  const Corners._();
  //
  double get md => spacing3.r;
  Radius get mediumRadius => Radius.circular(md);
  BorderRadius get mediumBorder => BorderRadius.all(mediumRadius);

  double get xxlg => spacing6.r;
  Radius get xxlgRadius => Radius.circular(xxlg);
  BorderRadius get xxlgBorder => BorderRadius.all(xxlgRadius);

  double get lg => spacing4.r;
  Radius get lgRadius => Radius.circular(lg);
  BorderRadius get lgBorder => BorderRadius.all(lgRadius);
}

/// padding, margin spacing for Height
class Height {
  Height._();
  double get spacingNone => spacing0.h;
  double get spacingXxs => spacing1.h;
  double get spacingXs => spacing2.h;

  double get spacingSm => spacing3.h;

  double get spacingMd => spacing4.h;

  double get spacingLg => spacing5.h;
  double get spacingXlg => spacing6.h;
  double get spacingXxlg => spacing7.h;
  double get spacingXxxlg => spacing8.h;
  double get spacingXxxxlg => spacing9.h;

  double get spacingLg10 => spacing10.h;
  double get spacingLg11 => spacing11.h;
  double get spacingLg12 => spacing12.h;
  double get spacingLg13 => spacing13.h;
}

/// padding, margin spacing for Width
class Width {
  Width._();
  double get spacingNone => spacing0.w;
  double get spacingXxs => spacing1.w;
  double get spacingXs => spacing2.w;

  double get spacingSm => spacing3.w;

  double get spacingMd => spacing4.w;

  double get spacingLg => spacing5.w;
  double get spacingXlg => spacing6.w;
  double get spacingXxlg => spacing7.w;
  double get spacingXxxlg => spacing8.w;
  double get spacingXxxxlg => spacing9.w;

  double get spacingLg10 => spacing10.w;
  double get spacingLg11 => spacing11.w;
  double get spacingLg12 => spacing12.w;
  double get spacingLg13 => spacing13.w;
}
