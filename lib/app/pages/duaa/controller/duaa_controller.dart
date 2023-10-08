import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

enum studying{
  Before,
  After
}
enum travelling{
  Before,
  During,
  After
}

class DuaaController extends GetxController {
  studying? selectedTime;

  bool dailyClicked=false;
  bool morningClicked=false;
  bool eveningClicked=false;
  bool nightClicked=false;
  bool studyingClicked=false;
  Color? colour;
  bool travellingClicked=false;

  RxInt _counter = 0.obs;

  RxInt get counter => _counter;

  void increaseCounter() {
    _counter++;
    update();
  }

  void increaseCounterBy5() {
    _counter = _counter + 5;
    update();
  }

  void decreaseCounter() {
    if (_counter > 0) {
      _counter--;
      update();
    }
  }

  void decreaseCounterBy5() {
    if (_counter > 4) {
      _counter = _counter - 5;
      update();
    }
  }

  void resetCounter() {
    _counter.value = 0;
    update();
  }
}
