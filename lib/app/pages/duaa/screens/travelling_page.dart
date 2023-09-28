import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../controller/duaa_controller.dart';
import '../widgets/duaa_box.dart';
import '../widgets/row_scroll_view.dart';
import 'daily_page.dart';

class TravellingPage extends GetView<DuaaController> {
  const TravellingPage({Key? key}) : super(key: key);

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
                            child: BackArrow()),
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
                          RowScrollView(
                            section: 'Before Travel',
                            length: 125,
                            styles: TextStyles.body.b_16B,
                          ),
                          SizedBox(
                            width: AppStyle.spacing.W.spacingXxxlg,
                          ),
                          RowScrollView(
                            section: 'During Travel',
                            length: 125,
                            styles: TextStyles.body.b_16B.subTextColor,
                          ),
                          SizedBox(
                            width: AppStyle.spacing.W.spacingXxxlg,
                          ),
                          RowScrollView(
                            section: 'After Travel',
                            length: 115,
                            styles: TextStyles.body.b_16B.subTextColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0;
                                i < duaas.beforeTravellingDuaas.length;
                                i++)
                              Column(
                                children: [
                                  DuaaBox(
                                    counter: '5',
                                    duaaText: duaas.beforeTravellingDuaas[i],
                                  ),
                                  SizedBox(
                                    height: AppStyle.spacing.H.spacingMd,
                                  ),
                                ],
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
}
