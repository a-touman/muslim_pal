import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/pages/duaa/widgets/row_scroll_view.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../widgets/back_arrow_ar.dart';
import '../controller/duaa_controller.dart';
import '../widgets/duaa_box.dart';
import 'daily_page.dart';

class StudyingPage extends GetView<DuaaController> {
  const StudyingPage({Key? key}) : super(key: key);

  bool beforeStudyingSelected() {
    return true;
  }

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
                          "Studying Duaa".tr,
                          style: TextStyles.heading.h3_28SB,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: RowScrollView(
                            section: 'Before Studying',
                            length: 160,
                            styles: TextStyles.body.b_16B,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              !beforeStudyingSelected();
                              if (beforeStudyingSelected() == false) {}
                            },
                            child: RowScrollView(
                              section: 'After Studying',
                              length: 160,
                              styles: TextStyles.body.b_16B.subTextColor,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0;
                                i < duaas.beforeStudyingDuaas.length;
                                i++)
                              Column(
                                children: [
                                  DuaaBox(
                                    counter: '5',
                                    duaaText: duaas.beforeStudyingDuaas[i],
                                  ),
                                  SizedBox(
                                    height: AppStyle.spacing.H.spacingMd,
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
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
