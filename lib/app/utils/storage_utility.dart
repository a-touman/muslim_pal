import 'package:get_storage/get_storage.dart';

class StorageUtility {
  StorageUtility();

  static final box = GetStorage();

  static void saveInStorage(String key, String value) {
    box.write(key, value);
  }

  static void saveInStorageMap(String key, Map<String, String> value) {
    box.write(key, value);
  }

  static Map<String, dynamic>? readFromStorageMap(String key) {
    Map<String, dynamic>? value = box.read(key);

    return value;
  }

  static String? readKey(String key) {
    String? value = box.read(key);
    return value;
  }
   static String? viewKey(String key) {
    String? value = box.read(key);
    return value ?? "Select Country And City";
  }
  static void removeKey(String key) {
    box.remove(key);
  }
}
