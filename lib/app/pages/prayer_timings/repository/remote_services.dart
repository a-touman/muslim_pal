import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:muslim_pal/app/pages/prayer_timings/controller/prayer_timings_controller.dart';
import 'package:muslim_pal/app/pages/prayer_timings/model/timings_model.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';

import '../../settings/services/location.dart';


class RemoteServices {
ChangeLanguageController changeLanguageController=Get.put(ChangeLanguageController());
 String location = '';
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



//   if (ChangeLanguageController().locationSelected = false) {
//       location = 'latitude=${changeLanguageController.lat}&longitude=${changeLanguageController.lon}';
//   }
//   else {
//     location = 'city=$city&country=$country';
//   }

// var url = Uri.parse('http://api.aladhan.com/v1/timingsByCity/$day-$month-$year?city=$city&country=$country&method=8');