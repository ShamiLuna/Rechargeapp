import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
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
              left: 2,
              top: 19,
              bottom: 25,
            ),
            child: Row(
              children: [
                Container(
                  height: 7,
                  width: 21,
                  margin: EdgeInsets.only(bottom: 7),
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(1),
                    ),
                    child: CountryPickerUtils.getDefaultFlagImage(
                      country,
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 7.v),
                //   child: CountryPickerUtils.getDefaultFlagImage(
                //     country,
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 14, 5, 25),
            child: CustomTextFormField(
              width: 218,
              controller: controller,
              // hintText: '+91',
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
              left: 10,
            ),
            width: 60,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
