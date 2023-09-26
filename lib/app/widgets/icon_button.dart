import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/app_colors.dart';
import '../style/text_themes.dart';

class IconContent extends StatelessWidget {
  final SvgPicture icon;

  IconContent({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FloatingActionButton.small(
            heroTag: null,
            elevation: 0,
            backgroundColor: AppColors.buttonIconBackground,
            onPressed: null,
            child: icon),
      ],
    );
  }
}
