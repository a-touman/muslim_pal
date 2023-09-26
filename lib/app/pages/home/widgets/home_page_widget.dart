import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:muslim_pal/app/style/style.dart';

import '../../../style/app_colors.dart';
import '../../../style/text_themes.dart';
import '../../AyahDetail/view/ayahdetail_view.dart';
import '../controller/home_controller.dart';


class ReusableContainer extends StatelessWidget {
  final Widget content;
  ReusableContainer({required this.content});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: content,
        decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(24.0)),
      ),
    );
  }
}
class Seemore extends StatelessWidget {
  const Seemore({
    super.key,
    required this.ayahText,
    required this.lineCount,
    required this.homeController,
    required this.Surahnum,
    required this.Versenum,
  });

  final String ayahText;
  final int lineCount;
  final HomeController homeController;
  final int? Surahnum;
  final int? Versenum;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            ayahText,
            style: TextStyles.body.b_14R.textColor,
            maxLines: lineCount >= 5 ? (homeController.showSeeMoreButton.value ? null : 5) : null,
            overflow:TextOverflow.visible ,
          ),
        ),
        if (lineCount >= 5 && !homeController.showSeeMoreButton.value)
          InkWell(
            onTap: () {
              Get.to(AyahDetailView(ayahText: ayahText,SurahNum: Surahnum,VerseNum: Versenum,));
            },
            child: Text(
              '...see more',
              style: TextStyles.body.b_16B.textColor,
              textAlign: TextAlign.left,
            ),
          ),
      ],
    );
  }
}
class IconContent extends StatelessWidget {
  final SvgPicture icon;
  final String label;
  IconContent({required this.icon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: FloatingActionButton(
                heroTag: null,
                  elevation: 0,
                  backgroundColor: AppColors.buttonIconBackground,
                  onPressed: null,
                  child: icon)),
          SizedBox(
            height: AppStyle.spacing.H.spacingXxs,
          ),
          Container(
            child: Text(
              label,
              style: TextStyles.heading.h5_22B,
            ),
          )
        ],
      ),
    );
  }
}