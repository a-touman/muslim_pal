import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';
import '../../settings/controller/change_language_controller.dart';

class LocationInfo extends StatelessWidget {
  ChangeLanguageController changeLanguageController =
      Get.find<ChangeLanguageController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(
            IconPaths.location,
            height: 45,
          ),
          SizedBox(width: AppStyle.spacing.W.spacingXs),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: changeLanguageController.getSelected()
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: Text(
                      "${changeLanguageController.country.value}",
                      textAlign: TextAlign.start,
                      style: TextStyles.heading.h5_22B,
                    ),
                  ),
                  SizedBox(height: AppStyle.spacing.H.spacingXxs),
                  Container(
                    alignment: changeLanguageController.getSelected()
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: Text(
                      '${changeLanguageController.city.value}, ${changeLanguageController.state.value}',
                      textAlign: TextAlign.start,
                      style: TextStyles.body.b_16B.subTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
