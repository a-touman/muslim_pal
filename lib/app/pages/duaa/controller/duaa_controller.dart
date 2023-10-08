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

  RxInt counter = 0.obs;

  void increaseCounter() {
    counter++;
    update();
  }

  void increaseCounterBy5() {
    counter = counter + 5;
    update();
  }

  void decreaseCounter() {
    if (counter > 0) {
      counter--;
      update();
    }
  }

  void decreaseCounterBy5() {
    if (counter > 4) {
      counter = counter - 5;
      update();
    }
  }

  void resetCounter() {
    counter.value = 0;
    update();
  }
}
