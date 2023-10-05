import 'dart:convert';
import 'dart:math';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import '../../settings/controller/change_language_controller.dart';
import '../model/quran_model.dart';
ChangeLanguageController changeLanguageController=Get.put(ChangeLanguageController());
  class RemoteServices {
  final Random random = Random();
  String lang='';

  int randomInt() {
  int min = 1;
  int max = 6236;
  int r = min + random.nextInt(max - min);
  return r;
  }

  Future<QuranModel> fetchData() async {
  try {
    if(changeLanguageController.getCurrentLanguageCode()=="ar"){
      lang='ar';
    }
    else{
      lang='en';
    }

   var url = Uri.parse('http://api.alquran.cloud/v1/ayah/${randomInt()}/$lang.asad');
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
