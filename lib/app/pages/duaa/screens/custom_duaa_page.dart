// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_view.dart';
// import 'package:muslim_pal/app/pages/duaa/widgets/duaas_list.dart';
// import '../../../style/style.dart';
// import '../../../style/text_themes.dart';
// import '../../../widgets/back_arrow_ar.dart';
// import '../controller/duaa_controller.dart';
// import '../widgets/duaa_bank.dart';
// import '../widgets/duaa_box.dart';
//
// DuaaBank duaas = DuaaBank();
//
// enum DuaaCategory {
//   Daily,
//   Night,
//   Evening,
//   Morning,
//   Studying,
//   Travelling,
// }
//
// class CustomDuaaPage extends GetView<DuaaController> {
//   final DuaaCategory category;
//
//   CustomDuaaPage({Key? key, required this.category}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     String pageTitle = '';
//     List<DuaasList> duaasList = [];
//
//     switch (category) {
//       case DuaaCategory.Daily:
//         pageTitle = "Daily Duaas".tr;
//         duaasList = duaas.dailyDuaas;
//         break;
//       case DuaaCategory.Night:
//         pageTitle = "Night Duaas".tr;
//         duaasList = duaas.nightDuaas;
//         break;
//       case DuaaCategory.Evening:
//         pageTitle = "Evening Duaas".tr;
//         duaasList = duaas.eveningDuaas;
//         break;
//       case DuaaCategory.Morning:
//         pageTitle = "Morning Duaas".tr;
//         duaasList = duaas.morningDuaas;
//         break;
//       case DuaaCategory.Studying:
//         pageTitle = "Studying Duaas".tr;
//         duaasList = duaas.beforeStudyingDuaas;
//         break;
//       case DuaaCategory.Travelling:
//         pageTitle = "Travelling Duaas".tr;
//         duaasList = duaas.beforeTravellingDuaas;
//         break;
//     }
//
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Expanded(
//               child: Container(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 30.0,
//                   horizontal: 24.0,
//                 ),
//                 child: Column(
//                   children: <Widget>[
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Get.back();
//                           },
//                           child: BackArrow(),
//                         ),
//                         SizedBox(
//                           width: AppStyle.spacing.W.spacingXs,
//                         ),
//                         Text(
//                           pageTitle,
//                           style: TextStyles.heading.h3_28SB,
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: AppStyle.spacing.H.spacingXlg,
//                     ),
//                     Expanded(
//                       child: SingleChildScrollView(
//                         child: Column(
//                           children: [
//                             for (int i = 0; i < duaasList.length; i++)
//                               Column(
//                                 children: [
//                                   DuaaBox(
//                                     counters: ['5', '3', '8','5', '3', '8','5', '3', '8','5', '3', '8','5', '3', '8'],
//                                     duaaText: duaasList[i].duaasText,
//                                     category: category.toString().split('.').last.toLowerCase(),
//                                     index: i,
//                                   ),
//
//                                   SizedBox(
//                                     height: AppStyle.spacing.H.spacingMd,
//                                   ),
//                                 ],
//                               ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
