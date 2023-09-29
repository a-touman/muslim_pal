import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/duaa/controller/duaa_controller.dart';
import '../../../style/app_colors.dart';
class RowScrollView extends StatelessWidget {
  DuaaController duaaController=Get.put(DuaaController());
Color? colour;
  final String section;
  final TextStyle styles;
  final double length;


  RowScrollView({
    required this.colour,
    required this.section,
    required this.styles,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          section.tr,
          style: styles,
        ),
        SizedBox(
          width: length,
          height: 7,
          child: Visibility(
            child:  Divider(
              color:colour,
              thickness: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
