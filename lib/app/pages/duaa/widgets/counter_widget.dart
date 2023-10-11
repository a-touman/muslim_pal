import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';

import '../../../style/app_colors.dart';
import '../../../style/text_themes.dart';
import '../../../utils/assets.dart';

class CounterWidget extends StatefulWidget {
  final int initialValue;

  CounterWidget({Key? key, required this.initialValue}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isCounterFive = _counter == 5;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            ChangeLanguageController().getSelected()
                ? _decrementCounter()
                : _incrementCounter();
          },
          child: SvgPicture.asset(
            ChangeLanguageController().getSelected()
                ? IconPaths.sign_minus
                : IconPaths.sign_plus,
            height: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: Text(
            '$_counter'.tr,
            style: TextStyle(
                fontFamily: FontsFamily.effraTrialBold,
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: isCounterFive ? Colors.green : AppTextColors.headlines),
          ),
        ),
        GestureDetector(
          onTap: () {
            ChangeLanguageController().getSelected()
                ? _incrementCounter()
                : _decrementCounter();
          },
          child: SvgPicture.asset(
            ChangeLanguageController().getSelected()
                ? IconPaths.sign_plus
                : IconPaths.sign_minus,
            height: 50,
          ),
        )
      ],
    );
  }
}
