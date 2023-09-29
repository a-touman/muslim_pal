import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../controller/duaa_controller.dart';
import '../widgets/duaa_bank.dart';
import '../widgets/duaa_box.dart';

DuaaBank duaas = DuaaBank();
class DailyPage extends GetView<DuaaController> {
  const DailyPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                          'Daily Duaas'.tr,
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
                            for (int i = 0; i < duaas.dailyDuaas.length; i++)
                              Column(
                                children: [
                                  DuaaBox(
                                    counter: '5',
                                    duaaText: duaas.dailyDuaas[i].duaasText,
                                    category: 'daily',
                                    index: i,
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
