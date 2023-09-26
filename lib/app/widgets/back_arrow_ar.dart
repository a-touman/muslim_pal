import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/settings/controller/change_language_controller.dart';
import '../utils/assets.dart';

class BackArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ChangeLanguageController().getCurrentLanguageCode() == 'ar') {
      return Transform.rotate(
        angle: -59.7,
        child: SvgPicture.asset(
          IconPaths.back_arrow,
          height: 45,
        ),
      );
    } else {
      return SvgPicture.asset(
        IconPaths.back_arrow,
        height: 45,
      );
    }
  }
}
