import 'package:flutter/material.dart';

import '../../../style/style.dart';
import 'duaa_icon_container.dart';

class DuaaRow extends StatelessWidget {
  late final String containerIconLeft;
  late final String containerNameLeft;
  late final Widget duaaPageLeft;
  late final String containerIconRight;
  late final String containerNameRight;
  late final Widget duaaPageRight;

  DuaaRow(
      {required this.containerIconLeft,
      required this.containerNameLeft,
      required this.duaaPageLeft,
      required this.containerIconRight,
      required this.containerNameRight,
      required this.duaaPageRight});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          DuaaIconContainer(
            iconPicture: containerIconLeft,
            iconName: containerNameLeft,
            duaPage: duaaPageLeft,
          ),
          SizedBox(
            width: AppStyle.spacing.W.spacingMd,
          ),
          DuaaIconContainer(
            iconPicture: containerIconRight,
            iconName: containerNameRight,
            duaPage: duaaPageRight,
          ),
        ],
      ),
    );
  }
}
