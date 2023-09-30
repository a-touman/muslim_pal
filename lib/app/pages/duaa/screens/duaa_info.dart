import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/duaa/controller/duaa_controller.dart';
import 'package:muslim_pal/app/pages/duaa/screens/daily_page.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../widgets/duaa_box_simple.dart';

class DuaaInfo extends GetView<DuaaController> {
  final duaaController = Get.put(DuaaController());
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
    String pageTitle;
    if (category == 'daily') {
      pageTitle = 'Daily Duaa'.tr;
    } else if (category == 'evening') {
      pageTitle = 'Evening Duaa'.tr;
    } else if (category == 'night') {
      pageTitle = 'Night Duaa'.tr;
    } else if (category == 'morning') {
      pageTitle = 'Morning Duaa'.tr;
    } else if (category == 'before study') {
      pageTitle = 'Before Studying Duaa'.tr;
    } else if (category == 'after study') {
      pageTitle = 'After Studying Duaa'.tr;
    } else if (category == 'Before Travel') {
      pageTitle = 'Before Travelling Duaa'.tr;
    } else if (category == 'During Travel') {
      pageTitle = 'During Travelling Duaa'.tr;
    } else if (category == 'After Travel') {
      pageTitle = 'After Travelling Duaa'.tr;
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
                                getContent: () {
                                  if (category == 'daily') {
                                    return duaas.dailyDuaas[index].duaasText.tr;
                                  } else if (category == 'evening') {
                                    return duaas
                                        .eveningDuaas[index].duaasText.tr;
                                  } else if (category == 'night') {
                                    return duaas.nightDuaas[index].duaasText.tr;
                                  } else if (category == 'morning') {
                                    return duaas
                                        .morningDuaas[index].duaasText.tr;
                                  } else if (category == 'before study') {
                                    return duaas.beforeStudyingDuaas[index]
                                        .duaasText.tr;
                                  } else if (category == 'after study') {
                                    return duaas
                                        .afterStudyingDuaas[index].duaasText.tr;
                                  } else if (category == 'Before Travel') {
                                    return duaas.beforeTravellingDuaas[index]
                                        .duaasText.tr;
                                  } else if (category == 'During Travel') {
                                    return duaas.duringTravellingDuaas[index]
                                        .duaasText.tr;
                                  } else if (category == 'After Travel') {
                                    return duaas.afterTravellingDuaas[index]
                                        .duaasText.tr;
                                  } else {
                                    return 'Unknown';
                                  }
                                },
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
                                      getContent: () {
                                        if (category == 'daily') {
                                          if (ChangeLanguageController()
                                                  .getSelected() ==
                                              true) {
                                            return duaas
                                                .dailyDuaas[index].duaasTextTr;
                                          } else {
                                            return duaas
                                                .dailyDuaas[index].duaasText;
                                          }
                                        } else if (category == 'evening') {
                                          if (ChangeLanguageController()
                                                  .getSelected() ==
                                              true) {
                                            return duaas.eveningDuaas[index]
                                                .duaasTextTr;
                                          } else {
                                            return duaas
                                                .eveningDuaas[index].duaasText;
                                          }
                                        } else if (category == 'night') {
                                          if (ChangeLanguageController()
                                                  .getSelected() ==
                                              true) {
                                            return duaas
                                                .nightDuaas[index].duaasTextTr;
                                          } else {
                                            return duaas
                                                .nightDuaas[index].duaasText;
                                          }
                                        } else if (category == 'morning') {
                                          if (ChangeLanguageController()
                                                  .getSelected() ==
                                              true) {
                                            return duaas.morningDuaas[index]
                                                .duaasTextTr;
                                          } else {
                                            return duaas
                                                .morningDuaas[index].duaasText;
                                          }
                                        } else if (category == 'before study') {
                                          if (ChangeLanguageController()
                                                  .getSelected() ==
                                              true) {
                                            return duaas
                                                .beforeStudyingDuaas[index]
                                                .duaasTextTr;
                                          } else {
                                            return duaas
                                                .beforeStudyingDuaas[index]
                                                .duaasText;
                                          }
                                        } else if (category == 'after study') {
                                          if (ChangeLanguageController()
                                                  .getSelected() ==
                                              true) {
                                            return duaas
                                                .afterStudyingDuaas[index]
                                                .duaasTextTr;
                                          } else {
                                            return duaas
                                                .afterStudyingDuaas[index]
                                                .duaasText;
                                          }
                                        } else if (category ==
                                            'Before Travel') {
                                          if (ChangeLanguageController()
                                                  .getSelected() ==
                                              true) {
                                            return duaas
                                                .beforeTravellingDuaas[index]
                                                .duaasTextTr;
                                          } else {
                                            return duaas
                                                .beforeTravellingDuaas[index]
                                                .duaasText;
                                          }
                                        } else if (category ==
                                            'During Travel') {
                                          if (ChangeLanguageController()
                                                  .getSelected() ==
                                              true) {
                                            return duaas
                                                .duringTravellingDuaas[index]
                                                .duaasTextTr;
                                          } else {
                                            return duaas
                                                .duringTravellingDuaas[index]
                                                .duaasText;
                                          }
                                        } else if (category == 'After Travel') {
                                          if (ChangeLanguageController()
                                                  .getSelected() ==
                                              true) {
                                            return duaas
                                                .afterTravellingDuaas[index]
                                                .duaasTextTr;
                                          } else {
                                            return duaas
                                                .afterTravellingDuaas[index]
                                                .duaasText;
                                          }
                                        } else {
                                          return 'Unknown';
                                        }
                                      },
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
                                        // horizontal:
                                        //     AppStyle.spacing.W.spacingLg,
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
                                            height:
                                                AppStyle.spacing.H.spacingLg,
                                          ),
                                          DuaaBoxSimple(
                                            getContent: () {
                                              if (category == 'daily') {
                                                return duaas.dailyDuaas[index]
                                                    .duaasReference;
                                              } else if (category ==
                                                  'evening') {
                                                return duaas.eveningDuaas[index]
                                                    .duaasReference;
                                              } else if (category == 'night') {
                                                return duaas.nightDuaas[index]
                                                    .duaasReference;
                                              } else if (category ==
                                                  'morning') {
                                                return duaas.morningDuaas[index]
                                                    .duaasReference;
                                              } else if (category ==
                                                  'before study') {
                                                return duaas
                                                    .beforeStudyingDuaas[index]
                                                    .duaasReference;
                                              } else if (category ==
                                                  'after study') {
                                                return duaas
                                                    .afterStudyingDuaas[index]
                                                    .duaasReference;
                                              } else if (category ==
                                                  'Before Travel') {
                                                return duaas
                                                    .beforeTravellingDuaas[
                                                        index]
                                                    .duaasReference;
                                              } else if (category ==
                                                  'During Travel') {
                                                return duaas
                                                    .duringTravellingDuaas[
                                                        index]
                                                    .duaasReference;
                                              } else if (category ==
                                                  'After Travel') {
                                                return duaas
                                                    .afterTravellingDuaas[index]
                                                    .duaasReference;
                                              } else {
                                                return 'Unknown';
                                              }
                                            },
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
                                      child: Obx(() {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ChangeLanguageController()
                                                    .getSelected()
                                                ? GestureDetector(
                                                    onTap: () {
                                                      duaaController
                                                          .decreaseCounter();
                                                    },
                                                    onDoubleTap: () {
                                                      duaaController
                                                          .decreaseCounterBy5();
                                                    },
                                                    onLongPress: () {
                                                      duaaController
                                                          .resetCounter();
                                                    },
                                                    child: SvgPicture.asset(
                                                      IconPaths.sign_minus,
                                                      height: 50,
                                                    ),
                                                  )
                                                : GestureDetector(
                                                    onTap: () {
                                                      duaaController
                                                          .increaseCounter();
                                                    },
                                                    onDoubleTap: () {
                                                      duaaController
                                                          .increaseCounterBy5();
                                                    },
                                                    child: SvgPicture.asset(
                                                      IconPaths.sign_plus,
                                                      height: 50,
                                                    ),
                                                  ),
                                            Text(
                                              duaaController.counter.value
                                                  .toString()
                                                  .tr,
                                              style: TextStyles.heading.h3_28EB,
                                            ),
                                            ChangeLanguageController()
                                                    .getSelected()
                                                ? GestureDetector(
                                                    onTap: () {
                                                      duaaController
                                                          .increaseCounter();
                                                    },
                                                    onDoubleTap: () {
                                                      duaaController
                                                          .increaseCounterBy5();
                                                    },
                                                    child: SvgPicture.asset(
                                                      IconPaths.sign_plus,
                                                      height: 50,
                                                    ),
                                                  )
                                                : GestureDetector(
                                                    onTap: () {
                                                      duaaController
                                                          .decreaseCounter();
                                                    },
                                                    onDoubleTap: () {
                                                      duaaController
                                                          .decreaseCounterBy5();
                                                    },
                                                    onLongPress: () {
                                                      duaaController
                                                          .resetCounter();
                                                    },
                                                    child: SvgPicture.asset(
                                                      IconPaths.sign_minus,
                                                      height: 50,
                                                    ),
                                                  ),
                                          ],
                                        );
                                      }),
                                    )
                                  ],
                                ),
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
          ],
        ),
      ),
    );
  }
}
