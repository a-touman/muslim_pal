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
  List<RxInt> daily=[];
  List<RxInt> evening=[];
  List<RxInt> morning=[];
  List<RxInt> night=[];
  List<RxInt> study=[];
  List<int> initDaily=[5,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
  late String name;
void fillData(List<RxInt> toFill,List<int> fill){
  int i=0;
  while(i<toFill.length){
    toFill[i].value=fill[i];
    i++;
  }
}
RxInt createCounter(String i,String name){
  RxInt $namecounter$i=0.obs;
  if(name=="D"){
    daily.add($namecounter$i);
    fillData(daily, initDaily);
  }
  else if(name=="E"){
    evening.add($namecounter$i);
  }
  else if(name=="M"){
    morning.add($namecounter$i);
  }
  else if(name=="S"){
    study.add($namecounter$i);
  }
  else if(name=="N"){
    night.add($namecounter$i);
  }
  return $namecounter$i;
}
  void increaseCounter(RxInt counter){
  counter++;
    update();
  }
  List<RxInt> chooseCounter(String choose){
  if(choose=="daily"){
    return daily;
  }
  else if(choose=="morning"){
    return morning;
  }
  else if(choose=="evening"){
    return evening;
  }
  else if(choose=="night"){
    return night;
  }
  else if(choose=="studying"){
    return study;
  }
  return null!;
  }
  void selectName(String category){
    if(category=="daily"){
      name="daily";
    }
    else if(category=="morning"){
      name="morning";
    }
    else if(category=="evening"){
      name="evening";
    }
    else if(category=="studying"){
      name="studying";
    }
    else if(category=="night"){
      name="night";
    }
  }

  void increaseCounterBy5(RxInt counter) {
    counter = counter + 5;
    update();
  }

  void decreaseCounter(RxInt counter) {
    if (counter.value > 0) {
      counter--;
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
