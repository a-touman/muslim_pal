import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

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
            _decrementCounter();
          },
          child: SvgPicture.asset(
            IconPaths.sign_minus,
            height: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
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
            _incrementCounter();
          },
          child: SvgPicture.asset(
            IconPaths.sign_plus,
            height: 50,
          ),
        )
      ],
    );
  }
}
