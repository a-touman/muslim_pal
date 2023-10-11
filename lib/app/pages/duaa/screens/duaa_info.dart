import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/duaa/widgets/duaas_list.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../widgets/counter_widget.dart';
import '../widgets/duaa_box_simple.dart';
import 'daily_page.dart';

class DuaaInfo extends StatelessWidget {
  final String duaaText;
  final String category;
  final int index;

  DuaaInfo({
    required this.duaaText,
    required this.category,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final isLanguageSelected = ChangeLanguageController().getSelected();
    final specificDuaas = getSpecificDuaas(category);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: AppStyle.spacing.H.spacingXlg,
                  horizontal: 24.0,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
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
                          getPageTitle(category),
                          style: TextStyles.heading.h3_28SB,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            DuaaBoxSimple(
                              getContent: () =>
                                  specificDuaas[index].duaasText.tr,
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      ' Translation:'.tr,
                                      style: TextStyles.heading.h5_22B,
                                    ),
                                    alignment: isLanguageSelected
                                        ? Alignment.centerLeft
                                        : Alignment.centerRight,
                                  ),
                                  SizedBox(
                                    height: AppStyle.spacing.H.spacingSm,
                                  ),
                                  DuaaBoxSimple(
                                    getContent: () => isLanguageSelected
                                        ? specificDuaas[index].duaasTextTr
                                        : specificDuaas[index].duaasText,
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
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '     Reference:'.tr,
                                          style: TextStyles
                                              .body.b_16B.subTextColor,
                                        ),
                                        SizedBox(
                                          height: AppStyle.spacing.H.spacingLg,
                                        ),
                                        DuaaBoxSimple(
                                          getContent: () => specificDuaas[index]
                                              .duaasReference
                                              .tr,
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
                                          MainAxisAlignment.center,
                                      children: [
                                        CounterWidget(
                                          initialValue: 0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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

  String getPageTitle(String category) {
    switch (category) {
      case 'daily':
        return 'Daily Duaa'.tr;
      case 'evening':
        return 'Evening Duaa'.tr;
      case 'night':
        return 'Night Duaa'.tr;
      case 'morning':
        return 'Morning Duaa'.tr;
      case 'before study':
        return 'Before Studying Duaa'.tr;
      case 'after study':
        return 'After Studying Duaa'.tr;
      case 'before Travel':
        return 'Before Travelling Duaa'.tr;
      case 'during Travel':
        return 'During Travelling Duaa'.tr;
      case 'after Travel':
        return 'After Travelling Duaa'.tr;
      default:
        return 'Unknown Category';
    }
  }

  List<DuaasList> getSpecificDuaas(String category) {
    switch (category) {
      case 'daily':
        return duaas.dailyDuaas;
      case 'evening':
        return duaas.eveningDuaas;
      case 'night':
        return duaas.nightDuaas;
      case 'morning':
        return duaas.morningDuaas;
      case 'before study':
        return duaas.beforeStudyingDuaas;
      case 'after study':
        return duaas.afterStudyingDuaas;
      case 'before Travel':
        return duaas.beforeTravellingDuaas;
      case 'during Travel':
        return duaas.duringTravellingDuaas;
      case 'after Travel':
        return duaas.afterTravellingDuaas;
      default:
        return [];
    }
  }
}
