import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../../home/repository/remote services.dart';
import '../controller/duaa_controller.dart';
import '../widgets/duaa_box.dart';
import '../widgets/row_scroll_view.dart';
import 'daily_page.dart';

class TravellingPage extends GetView<DuaaController> {
  TravellingPage({Key? key}) : super(key: key);

  final RxString selectedSection = 'Before Travel'.obs;

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
                          "Travelling Duaa".tr,
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
                              selectedSection.value = 'Before Travel';
                            },
                            child: Obx(() {
                              return RowScrollView(
                                section: 'Before Travel',
                                length: changeLanguageController.getSelected()
                                    ? 120
                                    : 90,
                                styles: selectedSection.value == 'Before Travel'
                                    ? TextStyles.body.b_16B
                                    : TextStyles.body.b_16B.subTextColor,
                              );
                            }),
                          ),
                          SizedBox(
                            width: AppStyle.spacing.W.spacingXxxlg,
                          ),
                          GestureDetector(
                            onTap: () {
                              selectedSection.value = 'During Travel';
                            },
                            child: Obx(() {
                              return RowScrollView(
                                section: 'During Travel',
                                length: changeLanguageController.getSelected()
                                    ? 120
                                    : 100,
                                styles: selectedSection.value == 'During Travel'
                                    ? TextStyles.body.b_16B
                                    : TextStyles.body.b_16B.subTextColor,
                              );
                            }),
                          ),
                          SizedBox(
                            width: AppStyle.spacing.W.spacingXxxlg,
                          ),
                          GestureDetector(
                            onTap: () {
                              selectedSection.value = 'After Travel';
                            },
                            child: Obx(() {
                              return RowScrollView(
                                section: 'After Travel',
                                length: changeLanguageController.getSelected()
                                    ? 120
                                    : 90,
                                styles: selectedSection.value == 'After Travel'
                                    ? TextStyles.body.b_16B
                                    : TextStyles.body.b_16B.subTextColor,
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
                        List<String> selectedDuaas = [];

                        if (selectedSection.value == 'Before Travel') {
                          selectedDuaas = duaas.beforeTravellingDuaas;
                        } else if (selectedSection.value == 'During Travel') {
                          selectedDuaas = duaas.duringTravellingDuaas;
                        } else if (selectedSection.value == 'After Travel') {
                          selectedDuaas = duaas.afterTravellingDuaas;
                        }

                        return ListView.builder(
                          itemCount: selectedDuaas.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                DuaaBox(
                                  counter: '5',
                                  duaaText: selectedDuaas[index],
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
