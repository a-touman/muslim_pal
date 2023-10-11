import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/duaa/widgets/duaas_list.dart';

import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../../home/repository/remote_services.dart';
import '../controller/duaa_controller.dart';
import '../widgets/duaa_box.dart';
import '../widgets/row_scroll_view.dart';
import 'daily_page.dart';

enum travelling { Before, During, After }

class TravellingPage extends GetView<DuaaController> {
  TravellingPage({Key? key}) : super(key: key);
  travelling? travellingTime;

  final RxString selectedSection = 'before Travel'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  right: 24.0,
                  bottom: 24.0,
                  left: 24.0,
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
                          "Travelling Duaas".tr,
                          style: TextStyles.heading.h3_28SB,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              selectedSection.value = 'before Travel';
                              travellingTime = travelling.Before;
                            },
                            child: Obx(() {
                              return RowScrollView(
                                section: 'Before Travel',
                                length: changeLanguageController.getSelected()
                                    ? 120
                                    : 90,
                                styles: selectedSection.value == 'before Travel'
                                    ? TextStyles.body.b_16B
                                    : TextStyles.body.b_16B.subTextColor,
                                colour: travellingTime == travelling.Before
                                    ? AppColors.primary
                                    : Colors.transparent,
                              );
                            }),
                          ),
                          SizedBox(
                            width: AppStyle.spacing.W.spacingXxxlg,
                          ),
                          GestureDetector(
                            onTap: () {
                              selectedSection.value = 'during Travel';
                              travellingTime = travelling.During;
                            },
                            child: Obx(() {
                              return RowScrollView(
                                section: 'During Travel',
                                length: changeLanguageController.getSelected()
                                    ? 120
                                    : 100,
                                styles: selectedSection.value == 'during Travel'
                                    ? TextStyles.body.b_16B
                                    : TextStyles.body.b_16B.subTextColor,
                                colour: travellingTime == travelling.During
                                    ? AppColors.primary
                                    : Colors.transparent,
                              );
                            }),
                          ),
                          SizedBox(
                            width: AppStyle.spacing.W.spacingXxxlg,
                          ),
                          GestureDetector(
                            onTap: () {
                              travellingTime = travelling.After;
                              selectedSection.value = 'after Travel';
                            },
                            child: Obx(() {
                              return RowScrollView(
                                section: 'After Travel',
                                length: changeLanguageController.getSelected()
                                    ? 120
                                    : 90,
                                styles: selectedSection.value == 'after Travel'
                                    ? TextStyles.body.b_16B
                                    : TextStyles.body.b_16B.subTextColor,
                                colour: travellingTime == travelling.After
                                    ? AppColors.primary
                                    : Colors.transparent,
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    Expanded(
                      child: Obx(() {
                        List<DuaasList> selectedDuaas = [];
                        String category = selectedSection.value;

                        if (selectedSection.value == 'before Travel') {
                          selectedDuaas = duaas.beforeTravellingDuaas;
                        } else if (selectedSection.value == 'during Travel') {
                          selectedDuaas = duaas.duringTravellingDuaas;
                        } else if (selectedSection.value == 'after Travel') {
                          selectedDuaas = duaas.afterTravellingDuaas;
                        }

                        return ListView.builder(
                          itemCount: selectedDuaas.length,
                          itemBuilder: (context, index) {
                            if (selectedSection.value == 'before Travel') {
                              category = 'before Travel';
                            } else if (selectedSection.value ==
                                'during Travel') {
                              category = 'during Travel';
                            } else if (selectedSection.value ==
                                'after Travel') {
                              category = 'after Travel';
                            }
                            return Column(
                              children: [
                                DuaaBox(
                                  duaaText: selectedDuaas[index].duaasText,
                                  category: category,
                                  index: index,
                                ),
                                SizedBox(
                                  height: AppStyle.spacing.H.spacingMd,
                                ),
                              ],
                            );
                          },
                        );
                      }),
                    )
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
