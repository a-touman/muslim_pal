import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:muslim_pal/app/pages/prayer_timings/model/timings_model.dart';

class RemoteServices {
  Future<TimingsModel> fetchData() async {
    try {
      var url = Uri.parse(
          'http://api.aladhan.com/v1/timingsByCity?city=Dubai&country=United Arab Emirates&method=8');
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






