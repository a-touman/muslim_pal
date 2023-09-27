import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/duaa/screens/daily_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/evening_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/morning_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/night_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/studying_page.dart';
import 'package:muslim_pal/app/pages/duaa/screens/travelling_page.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/widgets/back_arrow_ar.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';
import '../controller/duaa_controller.dart';

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
                              child: BackArrow()),
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
                        'Select Duaa Catgeory'.tr,
                        style: TextStyles.heading.h5_22B,
                      ),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingMd,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 157),
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

class DuaaRow extends StatelessWidget {
  late final String containerIconLeft;
  late final String containerNameLeft;
  late final Widget duaaPageLeft;
  late final String containerIconRight;
  late final String containerNameRight;
  late final Widget duaaPageRight;

  DuaaRow(
      {required this.containerIconLeft,
      required this.containerNameLeft,
      required this.duaaPageLeft,
      required this.containerIconRight,
      required this.containerNameRight,
      required this.duaaPageRight});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          DuaaContainer(
            iconPicture: containerIconLeft,
            iconName: containerNameLeft,
            page: duaaPageLeft,
          ),
          SizedBox(
            width: AppStyle.spacing.W.spacingMd,
          ),
          DuaaContainer(
            iconPicture: containerIconRight,
            iconName: containerNameRight,
            page: duaaPageRight,
          ),
        ],
      ),
    );
  }
}

class DuaaContainer extends StatelessWidget {
  late final String iconPicture;
  late final String iconName;
  late final Widget page;

  DuaaContainer(
      {required this.iconPicture, required this.iconName, required this.page});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Get.to(() => page);
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: AppStyle.corners.xxlgBorder,
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 42,
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        SvgPicture.asset(iconPicture),
                        SizedBox(
                          height: AppStyle.spacing.H.spacingXs,
                        ),
                        Text(
                          iconName.tr,
                          style: TextStyles.heading.h5_22B,
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
    );
  }
}
