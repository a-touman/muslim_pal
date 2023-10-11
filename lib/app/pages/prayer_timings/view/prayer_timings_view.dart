import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/widgets/back_arrow_ar.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';
import '../../../utils/constants.dart';
import '../../../widgets/horizontal_line.dart';
import '../../../widgets/icon_button.dart';
import '../../calendar/controller/calendar_controller.dart';
import '../controller/prayer_timings_controller.dart';
import '../widgets/location_info.dart';
import '../widgets/notification_item.dart';
import '../widgets/prayer_timings_icon.dart';
import '../widgets/reusable_container.dart';

class PrayerTimingsView extends GetView<PrayerTimingsController> {
  PrayerTimingsController prayerTimingsController =
      Get.put(PrayerTimingsController());
  CalendarController calendarController = Get.put(CalendarController());

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ChangeLanguageController());

    return Scaffold(
      body: SafeArea(
        child: Content(),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
        right: 25,
        left: 25,
        bottom: 15,
      ),
      child: Column(
        children: <Widget>[
          Header(),
          SizedBox(height: AppStyle.spacing.H.spacingXlg),
          DateNavigation(),
          SizedBox(height: AppStyle.spacing.H.spacingMd),
          PrayerTimingsContainer(),
          SizedBox(height: AppStyle.spacing.H.spacingSm),
          NotificationSection(),
          SizedBox(height: AppStyle.spacing.H.spacingSm),
          PrayerList(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: BackArrow(),
          ),
        ),
        SizedBox(width: AppStyle.spacing.W.spacingXs),
        Text(
          "Prayer Times".tr,
          style: TextStyles.heading.h3_28SB,
        )
      ],
    );
  }
}

class DateNavigation extends StatelessWidget {
  PrayerTimingsController prayerTimingsController =
      Get.find<PrayerTimingsController>();

  @override
  Widget build(BuildContext context) {
    ChangeLanguageController controller = Get.find<ChangeLanguageController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          onPressed: () {
            ChangeLanguageController().getSelected()
                ? prayerTimingsController.decValue()
                : prayerTimingsController.incValue();
            prayerTimingsController.limitDay();
          },
          icon: SvgPicture.asset(
            controller.getSelected()
                ? IconPaths.arrow_left
                : IconPaths.arrow_right,
            width: 50,
            height: 50,
          ),
        ),
        Expanded(
            child: Container(
          child: Column(
            children: <Widget>[
              Obx(() {
                return Text(
                  prayerTimingsController.displayHijriDate(),
                  style: TextStyles.heading.h5_22B,
                );
              }),
              SizedBox(height: AppStyle.spacing.H.spacingXxs),
              Obx(() {
                return Text(
                  "${prayerTimingsController.dayName.toString().tr}, ${prayerTimingsController.day.toString().tr} ${prayerTimingsController.monthName.value.tr} ${prayerTimingsController.year.toString().tr}",
                  style: TextStyles.body.b_14B.subTextColor,
                );
              }),
            ],
          ),
        )),
        IconButton(
          onPressed: () {
            ChangeLanguageController().getSelected()
                ? prayerTimingsController.incValue()
                : prayerTimingsController.decValue();
            prayerTimingsController.limitDay();
          },
          icon: SvgPicture.asset(
            controller.getSelected()
                ? IconPaths.arrow_right
                : IconPaths.arrow_left,
            width: 50,
            height: 50,
          ),
        ),
      ],
    );
  }
}

class PrayerTimingsContainer extends StatelessWidget {
  PrayerTimingsController prayerTimingsController =
      Get.find<PrayerTimingsController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      prayerTimingsController.displayPrayer();
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ReusableContainer(
            bgColor: kDarkGradient,
            prayerName: prayerTimingsController.before.value,
            primaryTime: prayerTimingsController.beforeTime.value,
            texts: "Now time is",
            smallText: 'End time - ',
            secondaryTime: prayerTimingsController.nextTime.value,
            mosqueColor: IconPaths.background_mosque,
            subtractColor: IconPaths.subtract,
          ),
          SizedBox(width: AppStyle.spacing.W.spacingMd),
          ReusableContainer(
            bgColor: kLightGradient,
            prayerName: prayerTimingsController.after.value,
            primaryTime: prayerTimingsController.nextTime.value,
            texts: "Next prayer is",
            smallText: 'Azan - ',
            secondaryTime: '${prayerTimingsController.nextTime.value} ',
            mosqueColor: IconPaths.background_mosque_light,
            subtractColor: IconPaths.subtract_light,
          ),
        ],
      );
    });
  }
}

class NotificationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: AppStyle.corners.lgBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Row(
          children: [
            IconContent(
              icon: SvgPicture.asset(
                IconPaths.bell_on,
                height: 28,
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    NotificationItem(
                      alignments: CrossAxisAlignment.end,
                      texts: 'Suhoor',
                      time: PrayerTimingsController().getFajr(),
                    ),
                    SizedBox(width: AppStyle.spacing.W.spacingSm),
                    const VerticalDivider(
                      thickness: 2,
                      color: AppColors.dividers,
                    ),
                    SizedBox(width: AppStyle.spacing.W.spacingSm),
                    NotificationItem2(
                      alignments: CrossAxisAlignment.start,
                      texts: 'Iftar',
                      time: PrayerTimingsController().getFajr(),
                    ),
                    SizedBox(width: 20.0),
                  ],
                ),
              ),
            ),
            IconContent(
              icon: SvgPicture.asset(
                IconPaths.bell_off,
                height: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrayerList extends StatelessWidget {
  PrayerTimingsController prayerTimingsController =
      Get.put(PrayerTimingsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Expanded(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: AppStyle.corners.xxlgBorder,
              color: AppColors.secondary,
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                LocationInfo(),
                SizedBox(height: AppStyle.spacing.H.spacingLg),
                PrayerTimings(
                  prayerIcon: IconPaths.fajr,
                  prayerName: "Fajr",
                  prayerTime: prayerTimingsController.getFajr()!,
                  bellActivity: IconPaths.bell_off,
                ),
                HorizontalLine(),
                PrayerTimings(
                  prayerIcon: IconPaths.duhur,
                  prayerName: "Duhur",
                  prayerTime: prayerTimingsController.getDuhur()!,
                  bellActivity: IconPaths.bell_off,
                ),
                HorizontalLine(),
                PrayerTimings(
                  prayerIcon: IconPaths.asr,
                  prayerName: "Asr",
                  prayerTime: prayerTimingsController.getAsr()!,
                  bellActivity: IconPaths.bell_on,
                ),
                HorizontalLine(),
                PrayerTimings(
                  prayerIcon: IconPaths.maghrib,
                  prayerName: "Maghrib",
                  prayerTime: prayerTimingsController.getMaghrib()!,
                  bellActivity: IconPaths.bell_on,
                ),
                HorizontalLine(),
                PrayerTimings(
                  prayerIcon: IconPaths.isha,
                  prayerName: "Isha",
                  prayerTime: prayerTimingsController.getIsha()!,
                  bellActivity: IconPaths.bell_on,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
