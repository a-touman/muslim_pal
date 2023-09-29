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
import '../controller/prayer_timings_controller.dart';
import '../../../widgets/horizontal_line.dart';
import '../../../widgets/icon_button.dart';
import '../widgets/location_info.dart';
import '../widgets/notification_item.dart';
import '../widgets/prayer_timings_icon.dart';
import '../widgets/reusable_container.dart';

class PrayerTimingsView extends GetView<PrayerTimingsController> {
  const PrayerTimingsView({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    ChangeLanguageController controller = Get.find<ChangeLanguageController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          onPressed: () {},
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
              Text(
                "Safar 12, 1445".tr,
                style: TextStyles.heading.h5_22B,
              ),
              SizedBox(height: AppStyle.spacing.H.spacingXxs),
              Text(
                "Mon, 28 August 2023".tr,
                style: TextStyles.body.b_14B.subTextColor,
              ),
            ],
          ),
        )),
        IconButton(
          onPressed: () {},
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
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ReusableContainer(
          bgColor: kDarkGradient,
          prayer: "Duhur",
          startTime: "12:27",
          texts: "Now time is",
          smallText: 'End time - ',
          endTime: "03:45 ",
          amOrPm: false,
          mosqueColor: IconPaths.background_mosque,
          subtractColor: IconPaths.subtract,
        ),
        SizedBox(width: AppStyle.spacing.W.spacingMd),
        ReusableContainer(
          bgColor: kLightGradient,
          prayer: "Asr",
          startTime: "03:54",
          texts: "Next prayer is",
          smallText: 'Azan - ',
          endTime: "05:15 ",
          amOrPm: false,
          mosqueColor: IconPaths.background_mosque_light,
          subtractColor: IconPaths.subtract_light,
        ),
      ],
    );
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
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
                      time: '04:57',
                      amOrPm: 'AM'.tr,
                    ),
                    SizedBox(width: AppStyle.spacing.W.spacingSm),
                    const VerticalDivider(
                      thickness: 2,
                      color: AppColors.dividers,
                    ),
                    SizedBox(width: AppStyle.spacing.W.spacingSm),
                    NotificationItem(
                      alignments: CrossAxisAlignment.start,
                      texts: 'Iftar',
                      time: '06:37',
                      amOrPm: 'PM'.tr,
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
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: AppStyle.corners.xxlgBorder,
          color: AppColors.secondary,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        child: Column(
          children: <Widget>[
            LocationInfo(),
            SizedBox(height: AppStyle.spacing.H.spacingLg),
            PrayerTimings(
              prayerIcon: IconPaths.fajr,
              prayer: "Fajr",
              prayerTime: "4:58",
              bellActivity: IconPaths.bell_off,
              amOrPm: 'AM',
            ),
            HorizontalLine(),
            PrayerTimings(
              prayerIcon: IconPaths.duhur,
              prayer: "Duhur",
              prayerTime: "12:27",
              bellActivity: IconPaths.bell_off,
              amOrPm: 'PM',
            ),
            HorizontalLine(),
            PrayerTimings(
              prayerIcon: IconPaths.asr,
              prayer: "Asr",
              prayerTime: "3:54",
              bellActivity: IconPaths.bell_on,
              amOrPm: 'PM',
            ),
            HorizontalLine(),
            PrayerTimings(
              prayerIcon: IconPaths.maghrib,
              prayer: "Maghrib",
              prayerTime: "6:36",
              bellActivity: IconPaths.bell_on,
              amOrPm: 'PM',
            ),
            HorizontalLine(),
            PrayerTimings(
              prayerIcon: IconPaths.isha,
              prayer: "Isha",
              prayerTime: "8:36",
              bellActivity: IconPaths.bell_on,
              amOrPm: 'PM',
            ),
          ],
        ),
      ),
    );
  }
}
