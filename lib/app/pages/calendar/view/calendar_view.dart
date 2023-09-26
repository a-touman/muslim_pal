import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/home/view/home_view.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/style/style.dart';
import 'package:muslim_pal/app/utils/constants.dart';
import '../controller/calendar_controller.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';
class CalendarView extends GetView<CalendarController> {
  CalendarController calendarController = Get.find<CalendarController>();
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 28, 24, 100),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              key: null,
                                onTap: () {
                                  Get.to(HomeView());
                                },
                                child: SvgPicture.asset(IconPaths.back_arrow)),
                            SizedBox(width: AppStyle.spacing.W.spacingXs),
                            Text('Calendar Converter',
                                style: TextStyles.heading.h3_28SB),
                          ],
                        ),
                        SizedBox(height: AppStyle.spacing.H.spacingXlg),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gregorian Calendar',
                              style: TextStyles.heading.h5_22B,
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            Container(
                              decoration: kDetailDecoration,
                              child: Padding(
                                padding: const EdgeInsets.all(24),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Obx(() {
                                      final day = calendarController
                                          .GselectedDay.value;
                                      final month = calendarController
                                          .GselectedMonth.value;
                                      final year = calendarController
                                          .GselectedYear.value;
                                      final formattedDay = day < 10
                                          ? '0$day'
                                          : day.toString();
                                      final formattedDate =
                                          "$formattedDay, $month $year";
                                      return Text(
                                        formattedDate,
                                        style: TextStyles
                                            .heading.h6_20B.textColor,
                                      );
                                    }),
                                    SizedBox(
                                        height: AppStyle.spacing.H.spacingMd),
                                    const Divider(
                                      color: AppColors.primary,
                                      thickness: 2,
                                    ),
                                    SizedBox(
                                        height: AppStyle.spacing.H.spacingMd),
                                    Row(
                                      children: [
                                        // Day container
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              const Text('Day'),
                                              SizedBox(
                                                  height: AppStyle.spacing.H.spacingXxs),
                                              Container(
                                                decoration: kCombobox,
                                                width: 100,
                                                child: Center(
                                                  child: Obx(
                                                        () => DropdownButton<int>(
                                                      value: calendarController.GselectedDay.value,
                                                      items: List<DropdownMenuItem<
                                                          int>>.generate(31, (index) =>
                                                          DropdownMenuItem<int>(
                                                            value: index + 1,
                                                            child: Text('${index + 1}'),
                                                          ),
                                                      ),
                                                      onChanged:
                                                          (newValue) {
                                                        calendarController.GsetSelectedDay(newValue ?? 1);
                                                      },
                                                      underline: Container(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: AppStyle.spacing.W.spacingSm),
                                        // Month container
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              const Text('Month'),
                                              SizedBox(
                                                  height: AppStyle.spacing.H.spacingXxs),
                                              Container(
                                                decoration: kCombobox,
                                                width: 150,
                                                child: Center(
                                                  child: Obx(
                                                        () => DropdownButton<String>(
                                                      value: calendarController.GselectedMonth.value,
                                                      items:
                                                      calendarController.monthList.map((month) {
                                                        return DropdownMenuItem<String>(value: month,
                                                          child: Text(month),
                                                        );
                                                      }).toList(),
                                                      onChanged: (newValue) {calendarController.GsetSelectedMonth(newValue ??'January');
                                                      },
                                                      underline: Container(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: AppStyle.spacing.W.spacingMd),
                                        //year
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text('Year'),
                                              SizedBox(
                                                  height: AppStyle.spacing.H.spacingXxs),
                                              Container(
                                                decoration: kCombobox,
                                                width: 100,
                                                child: Center(
                                                  child: TextFormField(
                                                    controller: _controller1,
                                                    textAlign: TextAlign.center,
                                                    keyboardType: TextInputType.number,
                                                    onChanged:
                                                        (newValue) {
                                                      calendarController.lastClickedGregorian=true;
                                                      int? parsedValue = int.tryParse(newValue);
                                                      if (parsedValue != null) {
                                                        calendarController.GsetSelectedYear(parsedValue);
                                                      }
                                                    },
                                                    decoration: const InputDecoration(border: InputBorder.none,hintText:'2020',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppStyle.spacing.H.spacingMd,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hijri Calendar',
                              style: TextStyles.heading.h5_22B,
                            ),
                            SizedBox(
                              height: AppStyle.spacing.H.spacingMd,
                            ),
                            Container(
                              decoration: kDetailDecoration,
                              child: Padding(
                                padding: const EdgeInsets.all(24),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Obx(() {
                                      final day = calendarController
                                          .HselectedDay.value;
                                      final month = calendarController
                                          .HselectedMonth.value;
                                      final year = calendarController
                                          .HselectedYear.value;
                                      final formattedDay = day < 10
                                          ? '0$day'
                                          : day.toString();
                                      final formattedDate =
                                          "$formattedDay, $month $year";
                                      return Text(
                                        formattedDate,
                                        style: TextStyles.heading.h6_20B.textColor,
                                      );
                                    }),
                                    SizedBox(
                                        height: AppStyle.spacing.H.spacingMd),
                                    const Divider(
                                      color: AppColors.primary,
                                      thickness: 2,
                                    ),
                                    SizedBox(
                                        height: AppStyle.spacing.H.spacingMd),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              const Text('Day'),
                                              SizedBox(
                                                  height: AppStyle.spacing.H.spacingXxs),
                                              Container(
                                                decoration: kCombobox,
                                                width: 100,
                                                child: Center(
                                                  child: Obx(
                                                        () => DropdownButton<int>(
                                                      value: calendarController.HselectedDay.value,
                                                      items: List<DropdownMenuItem<int>>.generate(31,
                                                            (index) => DropdownMenuItem<int>(value: index + 1, child: Text('${index + 1}'),
                                                        ),
                                                      ),
                                                      onChanged: (newValue) {calendarController.HsetSelectedDay(newValue ?? 1);
                                                      },
                                                      underline: Container(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: AppStyle.spacing.W.spacingSm),
                                        // Month container
                                        Expanded(
                                          flex: 3,
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                            const Text('Month'),
                                            SizedBox(
                                                height: AppStyle.spacing.H.spacingXxs),
                                            Container(
                                              decoration: kCombobox,
                                              width: 150,
                                              child: Center(
                                                child: Obx(
                                                      () => DropdownButton<
                                                      String>(value: calendarController.HselectedMonth.value, items: calendarController.hijrimonthList.map((month) {
                                                    return DropdownMenuItem<String>(value: month, child: Text(month),
                                                    );
                                                  }).toList(),
                                                    onChanged:
                                                        (newValue) {calendarController.HselectedMonth(newValue ?? 'MUHARAM');
                                                    },
                                                    underline:
                                                    Container(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: AppStyle.spacing.W.spacingMd),

                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              const Text('Year'),
                                              SizedBox(
                                                  height: AppStyle.spacing.H.spacingXxs),
                                              Container(
                                                decoration: kCombobox,
                                                width: 100,
                                                child: Center(
                                                  child: TextFormField(
                                                    controller:_controller,
                                                    textAlign: TextAlign.center,
                                                    keyboardType: TextInputType.number,
                                                    onChanged:
                                                        (newValue) {
                                                      calendarController.lastClickedGregorian=false;
                                                      int? parsedValue = int.tryParse(newValue);
                                                      if (parsedValue != null) {calendarController.HsetSelectedYear(parsedValue);
                                                      }},
                                                    decoration: const InputDecoration(border: InputBorder.none,hintText: '1410'
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppStyle.spacing.H.spacingMd,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 72, right: 72),
                          child: SizedBox(
                            height: AppStyle.spacing.H.spacingXxxxlg,
                            child: ElevatedButton(
                              key: null,
                              onPressed: () {
                                if(calendarController.lastClickedGregorian==true){
                                  calendarController.toHijri();
                                  _controller.text = calendarController.HselectedYear.toString();
                                }
                                else{
                                  controller.toGregorian();
                                  _controller1.text = calendarController.GselectedYear.toString();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor: AppColors.buttonIconBackground, side: const BorderSide(width: 2, color: AppColors.primary),
                              ),
                              child: Text(
                                'Convert Date',
                                style: TextStyles.body.b_16B,
                              ),
                            ),
                          ),
                        )
                      ]),
                ))));
  }
}
