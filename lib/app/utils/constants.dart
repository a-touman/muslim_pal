import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



const kdetails = LinearGradient(
  begin: Alignment(0,0),
  end: Alignment.topLeft,
  colors: [
    Color(0xFFF7D0B5),
    Color(0x00FAD4BF), // Transparent color
  ],
  stops: [0.4346, 1.3569],
);

const kLightGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
    Color.fromARGB(255, 250, 243, 238),
    Color.fromARGB(255, 250, 243,238),],
);

 BoxDecoration kDetailDecoration=BoxDecoration(
  borderRadius: BorderRadius.circular(24.0),
  gradient: kdetails,);