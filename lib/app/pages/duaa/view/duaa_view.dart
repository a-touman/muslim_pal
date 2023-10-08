import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/duaa/screens/custom_duaa_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/daily_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/evening_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/morning_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/night_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/studying_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/travelling_page.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/widgets/back_arrow_ar.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';
import '../controller/duaa_controller.dart';
import '../widgets/duaa_row.dart';

class DuaaView extends GetView<DuaaController> {
  const DuaaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ChangeLanguageController());

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
                            "Duaa".tr,
                            style: TextStyles.heading.h3_28SB,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXlg,
                    ),
                    Align(
                      alignment: ChangeLanguageController().getSelected()
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Text(
                        'Select Duaa Category'.tr,
                        style: TextStyles.heading.h5_22B,
                      ),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingMd,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              DuaaRow(
                                containerIconLeft: IconPaths.daily,
                                containerNameLeft: 'Daily',
                                duaaPageLeft: DailyPage(),
                                containerIconRight: IconPaths.morning,
                                containerNameRight: 'Morning',
                                duaaPageRight: MorningPage(),
                              ),
                              SizedBox(
                                height: AppStyle.spacing.H.spacingMd,
                              ),
                              DuaaRow(
                                containerIconLeft: IconPaths.evening,
                                containerNameLeft: 'Evening',
                                duaaPageLeft: EveningPage(),
                                containerIconRight: IconPaths.night,
                                containerNameRight: 'Night',
                                duaaPageRight: NightPage(),
                              ),
                              SizedBox(
                                height: AppStyle.spacing.H.spacingMd,
                              ),
                              DuaaRow(
                                containerIconLeft: IconPaths.studying,
                                containerNameLeft: 'Studying',
                                duaaPageLeft: StudyingPage(),
                                containerIconRight: IconPaths.travelling,
                                containerNameRight: 'Travelling',
                                duaaPageRight: TravellingPage(),
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
