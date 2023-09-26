import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'dart:math';
import 'dart:ui' as ui;
import 'package:muslim_pal/app/pages/home/model/quran_model.dart';

import '../repository/remote services.dart';
class HomeController extends GetxController {
  var isLoading = false.obs;
  Rx<QuranModel> mod = QuranModel().obs;
  var showSeeMoreButton = false.obs;
  final RemoteServices remoteServices = RemoteServices();
  RxString ayahText = ''.obs;
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }
  fetchData() async {
    try {
      isLoading(true);
      final quranModel = await remoteServices.fetchData();
      mod.value = quranModel;
      ayahText.value = mod.value.data?.text ?? 'loading';
    } catch (e) {
      print('Error while getting data: $e');
    } finally {
      isLoading(false);
    }
  }
  String getAyahText() {
    if (mod.value != null && mod.value.data != null) {
      print("called");
      print(mod.value.data?.text);
      return mod.value.data?.text ?? 'loading';
    } else {
      return 'Ayah data not available';
    }
  }
  RxString retA() {
    print(ayahText);
    return ayahText;
  }
  int? getVerseNo() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data?.numberInSurah;
    }
    else {
      return null;
    }
  }
  int? getSurahno() {
    if (mod.value != null && mod.value.data != null) {
      return mod.value.data?.surah?.number;
    }
    else {
      return null;
    }
  }
  bool hasSixOrMoreLines(String text) {
    final lines = text.split('\n');
    print(lines);
    return lines.length >= 6;
  }
  int countLines(String text, TextStyle style, double maxWidth) {
    final textSpan = TextSpan(text: text, style: style);
    final textPainter = TextPainter(
      text: textSpan,
      maxLines: null,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
    );
    textPainter.layout(maxWidth: maxWidth);
    final lineMetrics = textPainter.computeLineMetrics();

    return lineMetrics.length;
  }

}