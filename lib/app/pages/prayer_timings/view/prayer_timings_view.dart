import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';
import '../../../utils/constants.dart';
import '../controller/prayer_timings_controller.dart';
import '../widgets/horizontal_line.dart';
import '../widgets/icon_button.dart';
import '../widgets/location_info.dart';
import '../widgets/notification_item.dart';
import '../widgets/prayer_timings_icons.dart';
import '../widgets/reusable_container_og.dart';

class PrayerTimingsPage extends GetView<PrayerTimingsController> {
  const PrayerTimingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 74.5,
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
            // onTap:
            child: SvgPicture.asset(IconPaths.back_arrow),
          ),
          height: 42.0,
          width: 42.0,
        ),
        SizedBox(width: AppStyle.spacing.W.spacingXs),
        Text(
          "Prayer Times",
          style: TextStyles.heading.h3_28SB,
        )
      ],
    );
  }
}

class DateNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            IconPaths.left_arrow,
            width: 50,
            height: 50,
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Text(
                  "Safar 12, 1445",
                  style: TextStyles.heading.h5_22B,
                ),
                SizedBox(height: AppStyle.spacing.H.spacingXxs),
                Text(
                  "Mon, 28 August 2023",
                  style: TextStyles.body.b_14B.subTextColor,
                ),
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            IconPaths.right_arrow,
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
          endTime: "03:45",
          am_or_pm: false,
        ),
        SizedBox(width: AppStyle.spacing.W.spacingMd),
        ReusableContainer(
          bgColor: kLightGradient,
          prayer: "Asr",
          startTime: "03:54",
          texts: "Next prayer is",
          smallText: 'Azan - ',
          endTime: "05:15",
          am_or_pm: false,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconContent(
            icon: SvgPicture.asset(
              IconPaths.bell_on,
              width: 32.0,
              height: 32.0,
            ),
          ),
          SizedBox(width: 20.0),
          Expanded(
            child: Container(
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    NotificationItem(
                      alignments: CrossAxisAlignment.end,
                      texts: 'Suhoor',
                      time: '04:57 AM',
                    ),
                    SizedBox(width: AppStyle.spacing.W.spacingSm),
                    VerticalDivider(
                      indent: 22,
                      endIndent: 22,
                      thickness: 2,
                      color: AppColors.dividers,
                    ),
                    SizedBox(width: AppStyle.spacing.W.spacingSm),
                    NotificationItem(
                      alignments: CrossAxisAlignment.start,
                      texts: 'Iftar',
                      time: '06:37 PM',
                    ),
                    SizedBox(width: 20.0),
                    IconContent(
                      icon: SvgPicture.asset(
                        IconPaths.bell_off,
                        width: 32.0,
                        height: 32.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
                prayer: "Fajr.",
                prayerTime: "4:58 AM",
                bellActivity: IconPaths.bell_off),
            HorizontalLine(),
            PrayerTimings(
                prayerIcon: IconPaths.duhur,
                prayer: "Duhur",
                prayerTime: "12:27 PM",
                bellActivity: IconPaths.bell_off),
            HorizontalLine(),
            PrayerTimings(
                prayerIcon: IconPaths.asr,
                prayer: "Asr",
                prayerTime: "3:54 PM",
                bellActivity: IconPaths.bell_on),
            HorizontalLine(),
            PrayerTimings(
                prayerIcon: IconPaths.maghrib,
                prayer: "Maghrib",
                prayerTime: "6:36 PM",
                bellActivity: IconPaths.bell_on),
            HorizontalLine(),
            PrayerTimings(
                prayerIcon: IconPaths.isha,
                prayer: "Isha",
                prayerTime: "8:36 PM",
                bellActivity: IconPaths.bell_on),
          ],
        ),
      ),
    );
  }
}
