 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:muslim_pal/routes/app_pages.dart';
import 'package:muslim_pal/translations/translation.dart';
import 'app/style/style.dart';
import 'app/utils/storage_utility.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ); // To turn off landscape mode
  runApp(ScreenUtilInit(
    designSize: const Size(390, 844),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (BuildContext context, Widget? child) {
      return GetMaterialApp(
        title: 'Muslim Pal',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appTheme,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        translations: Translation(),
        locale: StorageUtility.readKey('lang') == null
            ? Get.deviceLocale
            : Locale(StorageUtility.readKey('lang')!),
        fallbackLocale: const Locale("en"),
      );
    },
  ));
}
