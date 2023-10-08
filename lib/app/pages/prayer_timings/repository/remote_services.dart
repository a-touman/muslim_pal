import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:muslim_pal/app/pages/prayer_timings/model/timings_model.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';

class RemoteServices {

ChangeLanguageController changeLanguageController = Get.put(ChangeLanguageController());

  Future<TimingsModel> fetchData(int year, int month, int day, String latitude, String longitude) async {
    try {
      var url = Uri.parse('http://api.aladhan.com/v1/timings/$day-$month-$year?latitude=${latitude}&longitude=${longitude}&method=2');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return TimingsModel.fromJson(result);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error while getting data: $e');
    }
  }
}

