import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/app_colors.dart';
import '../style/text_themes.dart';

class IconContent extends StatelessWidget {
  final SvgPicture icon;

  IconContent({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
      child: Column(
        children: <Widget>[
          Container(
              child: SizedBox(
            height: 46.0,
            width: 46.0,
            child: FloatingActionButton(
                heroTag: null,
                elevation: 0,
                backgroundColor: AppColors.buttonIconBackground,
                onPressed: null,
                child: icon),
          )),
        ],
      ),
    );
  }
}
