import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/pages/home/view/home_view.dart';
import 'package:muslim_pal/app/pages/prayer_timings/controller/prayer_timings_controller.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/widgets/back_arrow_ar.dart';
import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import 'package:country_picker_plus/country_picker_plus.dart';
import '../services/location.dart';

String newCountryValue = '';
String newStateValue = '';
String newCityValue = '';
Locationn loca=Locationn();
PrayerTimingsController prayerTimingsController=Get.find<PrayerTimingsController>();
class ManualLocationPage extends GetView<ChangeLanguageController> {
  const ManualLocationPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  right: 24.0,
                  bottom: 24.0,
                  left: 24.0,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: BackArrow(),
                          ),
                          SizedBox(
                            width: AppStyle.spacing.W.spacingXs,
                          ),
                          Text(
                            "Location".tr,
                            style: TextStyles.heading.h3_28SB,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXxxxlg,
                    ),
                    Expanded(
                      child: CountryPickerPlus(
                        isRequired: true,
                        countryLabel: "Country",
                        countrySearchHintText: "Search Country",
                        countryHintText: "Tap to Select Country",
                        stateLabel: 'State',
                        stateHintText: "Tap to Select State",
                        cityLabel: "City",
                        cityHintText: "Tap to Select City",
                        bottomSheetDecoration: CPPBSHDecoration(
                          itemsSpace: EdgeInsets.symmetric(vertical: 5),
                          itemTextStyle: TextStyles.body.b_16R,
                        ),
                        decoration: const CPPFDecoration(
                          margin: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                          height: 60,
                        ),
                        searchDecoration: CPPSFDecoration(
                          textStyle: TextStyles.body.b_16R,
                          hintStyle: TextStyles.body.b_16R,
                        ),
                        onCountrySelected: (value) {
                          newCountryValue = value;
                        },

                        onStateSelected: (value) {
                          newStateValue = value;
                        },

                        onCitySelected: (value) {
                          newCityValue = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 72, right: 72),
                      child: SizedBox(
                        height: AppStyle.spacing.H.spacingXxxxlg,
                        child: ElevatedButton(
                          onPressed: () {
                          controller.Mcountry.value=newCountryValue;
                          controller.Mstate.value=newStateValue;
                          controller.Mcity.value=newCityValue;

                          loca.getLangLongFromAddress("${controller.Mcountry.value}, ${controller.Mstate.value}, ${controller.Mcity.value}");

                          controller.country.value=controller.Mcountry.value;
                          controller.city.value=controller.Mcity.value;
                          controller.state.value=controller.Mstate.value;
                          Get.to(() => HomeView());
                            },

                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: AppColors.buttonIconBackground,
                            side: const BorderSide(
                                width: 2, color: AppColors.primary),
                          ),
                          child: Text(
                            'Confirm Location'.tr,
                            style: TextStyles.body.b_16B,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


