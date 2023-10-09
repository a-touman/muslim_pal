import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:muslim_pal/app/pages/duaa/screens/duaa_info.dart';

enum studying { Before, After }

enum travelling { Before, During, After }

class DuaaController extends GetxController {
  studying? selectedTime;
  bool dailyClicked = false;
  bool morningClicked = false;
  bool eveningClicked = false;
  bool nightClicked = false;
  bool studyingClicked = false;
  Color? colour;
  bool travellingClicked = false;
  List<RxInt> whip=[];
  late String name;

RxInt createCounter(String i,String name){
  RxInt $namecounter$i=0.obs;
  whip.add($namecounter$i);
  return $namecounter$i;
}
  void increaseCounter(RxInt counter,int i) {
  whip[i].value++;
    update();
  }

  void increaseCounterBy5(RxInt counter) {
    counter = counter + 5;
    update();
  }

  void decreaseCounter(RxInt counter) {
    if (counter > 0) {
      counter--;
      update();
    }
  }

  void decreaseCounterBy5(RxInt counter) {
    if (counter > 4) {
      counter = counter - 5;
      update();
    }
  }

  void resetCounter(RxInt counter) {
    counter.value = 0;
    update();
  }
}
