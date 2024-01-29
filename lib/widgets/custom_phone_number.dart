import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _openCountryPicker(context);
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 19.v,
              bottom: 25.v,
            ),
            child: Row(
              children: [
                Container(
                  height: 7.v,
                  width: 21.h,
                  margin: EdgeInsets.only(bottom: 7.v),
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(1.h),
                    ),
                    child: CountryPickerUtils.getDefaultFlagImage(
                      country,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: CountryPickerUtils.getDefaultFlagImage(
                    country,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(5.h, 14.v, 5.h, 25.v),
            child: CustomTextFormField(
              width: 218.h,
              controller: controller,
              hintText: "lbl_62".tr,
              hintStyle: CustomTextStyles.bodySmallRobotoWhiteA700,
              borderDecoration: TextFormFieldStyleHelper.fillDeepPurpleA,
              fillColor: appTheme.deepPurpleA10002,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
