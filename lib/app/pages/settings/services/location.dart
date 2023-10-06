import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
ChangeLanguageController changeLanguageController=Get.put(ChangeLanguageController());
class Locationn {
  // double? latitude;
  // double? longitude;
  Future<void> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      changeLanguageController.latt.value = position.latitude.toString();
      changeLanguageController.long.value = position.longitude.toString();
      print(changeLanguageController.long.value);
      getAddressFromLatLang(position);
    } catch (e) {
      print(e);
    }
  }

  Future<void> getAddressFromLatLang(Position position) async{
    List<Placemark>placemark=await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place=placemark[0];
    changeLanguageController.country.value=place.country!;
    print("thiis ${changeLanguageController.country.value}");
    changeLanguageController.city.value=place.administrativeArea!;
    changeLanguageController.state.value=place.locality!;
  }
}