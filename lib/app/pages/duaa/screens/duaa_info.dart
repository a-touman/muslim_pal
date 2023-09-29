import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/duaa/controller/duaa_controller.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/utils/assets.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../widgets/duaa_box_simple.dart';

late final String title;

class DuaaInfo extends GetView<DuaaController> {
  final String duaaText;
  final String category;

  DuaaInfo({
    required this.duaaText,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    String pageTitle;
    if (category == 'daily') {
      pageTitle = 'Daily Duaa'.tr;
    } else if (category == 'evening') {
      pageTitle = 'Evening Duaa'.tr;
    } else if (category == 'night') {
      pageTitle = 'Night Duaa'.tr;
    } else if (category == 'morning') {
      pageTitle = 'Morning Duaa'.tr;
    } else if (category == 'study') {
      pageTitle = 'Studying Duaa'.tr;
    } else if (category == 'travel') {
      pageTitle = 'Travelling Duaa'.tr;
    } else {
      pageTitle = 'Unknown Category';
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 30.0,
                  right: 24.0,
                  bottom: 24.0,
                  left: 24.0,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: BackArrow(),
                          ),
                          SizedBox(
                            width: AppStyle.spacing.W.spacingXs,
                          ),
                          Text(
                            pageTitle,
                            style: TextStyles.heading.h3_28SB,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              DuaaBoxSimple(
                                content: duaaText,
                              ),
                              SizedBox(
                                height: AppStyle.spacing.H.spacingMd,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        'Translation:'.tr,
                                        style: TextStyles.heading.h5_22B,
                                      ),
                                      alignment: ChangeLanguageController()
                                              .getSelected()
                                          ? Alignment.centerLeft
                                          : Alignment.centerRight,
                                    ),
                                    SizedBox(
                                      height: AppStyle.spacing.H.spacingSm,
                                    ),
                                    DuaaBoxSimple(
                                      content: ChangeLanguageController()
                                              .getSelected()
                                          ? duaaText.tr
                                          : duaaText,
                                    ),
                                    SizedBox(
                                      height: AppStyle.spacing.H.spacingXlg,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: AppStyle.corners.lgBorder,
                                        color: AppColors.secondary,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: AppStyle.spacing.H.spacingXlg,
                                        horizontal:
                                            AppStyle.spacing.W.spacingLg,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Reference:'.tr,
                                            style: TextStyles
                                                .body.b_16B.subTextColor,
                                          ),
                                          SizedBox(
                                            height:
                                                AppStyle.spacing.H.spacingLg,
                                          ),
                                          Text(
                                            'Ibn As-Sunni, no. 54, Ibn Majah no. 925. Its chain of transmission is good (Hasan), Ibn Al-Qayyim 2/375.\n\nHisn al-Muslim 95'
                                                .tr,
                                            style: TextStyles
                                                .body.b_16R.subTextColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: AppStyle.spacing.H.spacingXxlg,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 70),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ChangeLanguageController()
                                                  .getSelected()
                                              ? IconButton(
                                                  onPressed: () {},
                                                  icon: SvgPicture.asset(
                                                      IconPaths.sign_minus),
                                                  iconSize: 50,
                                                )
                                              : IconButton(
                                                  onPressed: () {},
                                                  icon: SvgPicture.asset(
                                                      IconPaths.sign_plus),
                                                  iconSize: 50,
                                                ),
                                          Text(
                                            '5'.tr,
                                            style: TextStyles.heading.h3_28EB,
                                          ),
                                          ChangeLanguageController()
                                                  .getSelected()
                                              ? IconButton(
                                                  onPressed: () {},
                                                  icon: SvgPicture.asset(
                                                      IconPaths.sign_plus),
                                                  iconSize: 50,
                                                )
                                              : IconButton(
                                                  onPressed: () {},
                                                  icon: SvgPicture.asset(
                                                      IconPaths.sign_minus),
                                                  iconSize: 50,
                                                ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
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
