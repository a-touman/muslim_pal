import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/calendar_controller.dart';

class CalendarView extends GetView<CalendarController> {
  const CalendarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalendarController>(
        id: "myId",
        builder: (logic) {
          return myWidget();
        });
  }
}

class myWidget extends StatelessWidget {
  const myWidget({
    super.key,
    // required this.controller,
  });

  // final CalendarController controller;

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<CalendarController>();
    return Container(
      child: Text(controller.text),
    );
  }
}
