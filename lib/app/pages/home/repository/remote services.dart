import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
 import 'package:muslim_pal/app/pages/calendar/model/model.dart';
import '../model/quran_model.dart';
  class RemoteServices {
  final Random random = Random();

  int randomInt() {
  int min = 1;
  int max = 6236;
  int r = min + random.nextInt(max - min);
  return r;
  }

  Future<QuranModel> fetchData() async {
  try {
  var url = Uri.parse('http://api.alquran.cloud/v1/ayah/${randomInt()}/en.asad');
  final response = await http.get(url);

  if (response.statusCode == 200) {
  final result = jsonDecode(response.body);
  return QuranModel.fromJson(result);
  } else {
  throw Exception('Failed to load data');
  }
  } catch (e) {
  throw Exception('Error while getting data: $e');
  }
  }






  }
