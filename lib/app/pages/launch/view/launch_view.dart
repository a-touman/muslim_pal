import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/utils/assets.dart';

import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import '../controller/launch_controller.dart';
import '../widgets/launch_page_widgets.dart';

class LaunchPage extends GetView<LaunchPageController> {
  //const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildLaunchPageAppBar,
        body: Stack(
          children: [
            Stack(
              fit: StackFit.expand,
              children: [
                Container(
                    decoration: BoxDecoration(
                        gradient: AppGradients.gradiant,
                        color: Colors.red,
                        borderRadius: AppStyle.corners.lgBorder)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: AppStyle.spacing.H.spacingXlg,
                          horizontal: AppStyle.spacing.W.spacingXlg),
                      child: Text("Quran".tr,
                          // style: TextStyles.heading.h1_36SB,
                          style: TextStyles.body.b_16B.subTextColor),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingMd,
                    ),
                    SvgPicture.asset(
                      IconPaths.daily,
                      height: AppStyle.spacing.H.spacingXxxxlg,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: AppStyle.spacing.W.spacingMd,
            ),
            Positioned(
              right: 20,
              bottom: 30,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: AppStyle.spacing.H.spacingXxxxlg,
                  width: AppStyle.spacing.W.spacingXlg,
                  decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: AppStyle.corners.lgBorder),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
