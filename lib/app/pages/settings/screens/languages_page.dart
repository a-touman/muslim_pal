import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import 'package:muslim_pal/app/utils/constants.dart';
import 'package:muslim_pal/app/utils/utils.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../widgets/languages_list.dart';

class LanguagesPage extends GetView<ChangeLanguageController> {
  const LanguagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 72.0,
                  right: 24.0,
                  bottom: 602.0,
                  left: 24.0,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: SvgPicture.asset(
                              IconPaths.back_arrow,
                              height: 45,
                            ),
                          ),
                          SizedBox(
                            width: AppStyle.spacing.W.spacingXs,
                          ),
                          Text(
                            "Languages".tr,
                            style: TextStyles.heading.h3_28SB,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.only(top: 50),
                        children: languagesList(context),
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
