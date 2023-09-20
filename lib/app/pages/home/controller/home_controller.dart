import 'dart:convert';
import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart'as http;
import 'dart:math';

import 'package:muslim_pal/app/pages/calendar/model/model.dart';
import 'package:muslim_pal/app/pages/home/model/quran_model.dart';
import 'package:muslim_pal/app/pages/home/repository/remote%20services.dart';

class HomeController extends GetxController {
  var isLoading=false.obs;
  quranModel? quranModell;
  fetchData() async{
    try{
      isLoading(true);
      var url=Uri.parse('http://api.alquran.cloud/v1/ayah/2/en.assad');
     http.Response response=await http.get(url);
     if(response.statusCode==200){
       var result=jsonDecode(response.body);
       quranModell=quranModel.fromJson(result);
     }
     else{
       //error
     }
    }catch(e){
      print('Error while getting data is $e');
    }
    finally{
      isLoading(false);
    }
  }
  String getAyahText(){
    if(quranModell!=null&&quranModell!.data!=null){
      return quranModell!.data!.text??"Ayah text not here";
    }
    else{
      return "Ayah text not available";
    }
  }

}




























//var ayahList=<Quran>[].obs;
// //String ayahdata="didnt work";
// var ayahData = "".obs;
// @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//   //  getAyahData();
//   }
// void getVerseOfTheDay() async {
//   var ayah = await RemoteServices.fetchAyah();
//   if (ayah != null && ayah.data.isNotEmpty) {
//     // Update the ayahList
//     ayahList.value = ayah.data.cast<Quran>();
//
//     // Set the ayahData to the English text of the first ayah (you can adjust this based on your requirements)
//     ayahData.value = ayah.data[0].englishNameTranslation;
//   }
// }
// @override
//   Random random = new Random();
// int randomint(){
//  int z=random.nextInt(6326)+1;
//  return z;
// }
// void getAyahDataa() async{
//   var ayah=await RemoteServices.fetchAyah();
//   if(ayah!=null){
//     ayahList.value=[ayah];
//   }
// }
//
//
// }
// //  Future<Quran> getAyahData() async{
// //   var url=Uri.parse('http://api.alquran.cloud/v1/ayah/${randomint()}/en.assad');
// //   var response=await http.get(url);
// //    if (response.statusCode==200) {
// //      String data=response.body;
// //      return quranFromJson(data);
// //      print('hi');
// //      //return jsonDecode(data);
// //
// //   }
// //   else{
// //     print(response.statusCode);
// //     print('fail');
// //   }
// // }