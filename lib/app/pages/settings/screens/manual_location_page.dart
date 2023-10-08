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
import '../../../utils/utils.dart';
import '../services/location.dart';

String newCountryValue = '';
String newStateValue = '';
String newCityValue = '';
Location loca = Location();
PrayerTimingsController prayerTimingsController = Get.find<PrayerTimingsController>();

class ManualLocationPage extends GetView<ChangeLanguageController> {
  const ManualLocationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  right: 24.0,
                  bottom: 24.0,
                  left: 24.0,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
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
                    SizedBox(
                      height: AppStyle.spacing.H.spacingXxxxlg,
                    ),
                    CountryPickerPlus(
                      isRequired: true,
                      countryLabel: "Country".tr,
                      countrySearchHintText: "Search Country".tr,
                      countryHintText: "Tap to Select Country".tr,
                      stateLabel: 'State'.tr,
                      stateHintText: "Tap to Select State".tr,
                      cityLabel: "City".tr,
                      cityHintText: "Tap to Select City".tr,
                      bottomSheetDecoration: CPPBSHDecoration(
                        itemsSpace: EdgeInsets.symmetric(vertical: 5),
                        itemTextStyle: TextStyles.body.b_16R,
                        height: 475,
                      ),
                      decoration: const CPPFDecoration(
                          margin: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 50,
                          ),
                          height: 60
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
                    SizedBox(height: AppStyle.spacing.H.spacingLg,),
                    Padding(
                      padding: const EdgeInsets.only(left: 72, right: 72),
                      child: SizedBox(
                          height: AppStyle.spacing.H.spacingXxxxlg,
                          child: ElevatedButton(
                            onPressed: () {
                              if (newCountryValue.isNotEmpty &&
                                  newStateValue.isNotEmpty &&
                                  newCityValue.isNotEmpty) {
                                controller.Mcountry.value = newCountryValue;
                                controller.Mstate.value = newStateValue;
                                controller.Mcity.value = newCityValue;

                                loca.getLatLonFromAddress(
                                    "${controller.Mcountry.value}, ${controller.Mstate.value}, ${controller.Mcity.value}");

                                controller.country.value = controller.Mcountry.value;
                                controller.city.value = controller.Mcity.value;
                                controller.state.value = controller.Mstate.value;
                                Get.to(() => HomeView());
                                Toast.defaultToast(
                                  context,
                                  'Location Confirmed'.tr,
                                );
                              } else {
                                Toast.defaultToast(
                                  context,
                                  'Please select a Country, State, and City.'.tr,
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: AppColors.buttonIconBackground,
                              side: const BorderSide(width: 2, color: AppColors.primary),
                            ),
                            child: Text(
                              'Confirm Location'.tr,
                              style: TextStyles.body.b_16B,
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

