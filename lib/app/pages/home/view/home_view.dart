import 'dart:ffi';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muslim_pal/app/pages/home/controller/home_controller.dart';
import 'package:muslim_pal/app/style/app_colors.dart';
import 'package:muslim_pal/app/style/style.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import 'package:muslim_pal/app/utils/icons.dart';
import '../../../style/text_themes.dart';
import 'package:http/http.dart';

import '../../calendar/model/model.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    HomeController homeController=Get.put(HomeController());
   //homeController.onInit();
    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 72.0, 24.0, 162.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Muslim Pal',
              style: TextStyles.heading.h3_28SB,
            ),
            SizedBox(
              height: 24.0,
            ),
            Expanded(
                child: GestureDetector(
                  onTap: (){
                 //  homeController.printdata();
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(24.0)),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Verse of the day',
                              style: TextStyles.heading.h5_22B,
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                          Text(homeController.quranModell?.data!.text??"FIX THIS"),
                            const SizedBox(height: 8.0),
                            Text(
                              'SURAH 62,VERSE 11',
                              style: TextStyles.body.b_12R,
                            )
                          ],
                        ),

                      )),
                )),
            const SizedBox(
              height: 24.0,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () {},
                          child: ReusableContainer(
                            content: IconContent(
                              icon:SvgPicture.asset(IconPaths.clock),
                              label: 'Prayer\nTimes',
                            ),
                          ))),
                  Expanded(
                      child: GestureDetector(
                          onTap: () {},
                          child: ReusableContainer(
                            content: IconContent(

                              label: 'Calendar Convertar', icon:SvgPicture.asset(IconPaths.rewind) ,
                            ),
                          ))),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                        onTap: () {},
                        child: ReusableContainer(
                          content: IconContent(
                            icon: SvgPicture.asset(IconPaths.dua),
                            label: 'Duaa',
                          ),
                        ))),
                Expanded(
                    child: GestureDetector(
                        onTap: () {},
                        child: ReusableContainer(
                          content: IconContent(
                            icon: SvgPicture.asset(IconPaths.settings),
                            label: 'Settings',
                          ),
                        ))),
              ],
            ))
          ],
        ),
      )),
    );
  }
}

class IconContent extends StatelessWidget {
  final SvgPicture icon;
  final String label;
  IconContent({required this.icon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Container(
             child:FloatingActionButton(
               elevation: 0,
               backgroundColor: AppColors.buttonIconBackground,
               onPressed:null,

               child:icon
             )
            ),


          SizedBox(
            height: 8.0,
          ),
          Container(
            child:Expanded(
              child: Text(
                label,
                style: TextStyles.heading.h5_22B,
              ),
            ) ,
          )

        ],
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  final Widget content;
  ReusableContainer({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: content,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(24.0)),
    );
  }
}
