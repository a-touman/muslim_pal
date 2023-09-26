import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:muslim_pal/app/pages/settings/controller/change_language_controller.dart';
import 'package:muslim_pal/app/utils/assets.dart';
import 'package:muslim_pal/app/widgets/back_arrow_ar.dart';
import '../../../style/app_colors.dart';
import '../../../style/style.dart';
import '../../../style/text_themes.dart';
import 'package:country_picker_plus/country_picker_plus.dart';

class ManualLocationPage extends GetView<ChangeLanguageController> {
  const ManualLocationPage({Key? key}) : super(key: key);

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
                  top: 72.0,
                  right: 24.0,
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
                            child: BackArrowAr(),
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
                        stateLabel: "State",
                        stateHintText: "Tap to Select State",
                        cityLabel: "City",
                        cityHintText: "Tap to Select City",
                        bottomSheetDecoration: CPPBSHDecoration(
                            itemsSpace: EdgeInsets.symmetric(vertical: 5),
                            itemTextStyle: TextStyles.body.b_16R),
                        decoration: CPPFDecoration(
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
                        onCountrySaved: (value) {},
                        onCountrySelected: (value) {},
                        onStateSelected: (value) {},
                        onCitySelected: (value) {},
                      ),
                    ),
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
