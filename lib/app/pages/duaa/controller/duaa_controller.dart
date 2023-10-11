import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

enum studying { Before, After }

enum travelling { Before, During, After }

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DuaaController extends GetxController {
  studying? selectedTime;
}
