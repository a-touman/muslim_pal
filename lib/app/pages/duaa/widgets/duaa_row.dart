import 'package:flutter/material.dart';

import '../../../style/style.dart';
import 'duaa_container.dart';

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
          DuaaContainer(
            iconPicture: containerIconLeft,
            iconName: containerNameLeft,
            page: duaaPageLeft,
          ),
          SizedBox(
            width: AppStyle.spacing.W.spacingMd,
          ),
          DuaaContainer(
            iconPicture: containerIconRight,
            iconName: containerNameRight,
            page: duaaPageRight,
          ),
        ],
      ),
    );
  }
}
