//import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:muslim_pal/app/pages/calendar/model/model.dart';
//
// import '../model/quran_model.dart';
// class RemoteServices{
//   var isLoading=false.obs;
//   static var client=http.Client();
//
//   static Future<quranModel?> fetchAyah() async {
//     var urll=Uri.parse('http://api.alquran.cloud/v1/ayah/${2}/en.assad');
//     var response=await client.get(urll);
//     if(response.statusCode==200){
//       var jsonString=response.body;
//
//     }
//     else
//     {print('fail');
//
//     return null;
//     }
//   }
// }