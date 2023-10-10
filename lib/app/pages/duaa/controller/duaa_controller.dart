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
  List<RxInt> daily=[];
  List<RxInt> evening=[];
  List<RxInt> morning=[];
  List<RxInt> night=[];
  List<RxInt> afstudy=[];
  List<RxInt> bfstudy=[];
  List<RxInt> beforeTravel=[];
  List<RxInt> duringTravel=[];
  List<RxInt> afterTravel=[];
  List<int> initDaily=[5,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
  late String name;
  @override

RxInt createCounter(String i,String name){
  RxInt $namecounter$i=5.obs;

  if(name=="D"){
    daily.add($namecounter$i);
  }
  else if(name=="E"){
    evening.add($namecounter$i);
  }
  else if(name=="M"){
    morning.add($namecounter$i);
  }
  else if(name=="bf"){
    bfstudy.add($namecounter$i);
  }  else if(name=="af"){
    afstudy.add($namecounter$i);
  }
  else if(name=="N"){
    night.add($namecounter$i);
  }
  else if(name=="before Travel"){
    beforeTravel.add($namecounter$i);
  }
  else if(name=="dt"){
    duringTravel.add($namecounter$i);
  }
  else if(name=="after Travel"){
    afterTravel.add($namecounter$i);
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
  else if(choose=="before study"){
    return bfstudy;
  }
  else if(choose=="after study"){
    return afstudy;
  }
  //here bbg
  else if(choose=="before Travel"){
    return beforeTravel;
  }
  else if(choose=="dt"){
    print("called dt");
    return duringTravel;
  }
  else if(choose=="after Travel"){
    return afterTravel;
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
