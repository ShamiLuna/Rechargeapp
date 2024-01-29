import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeDMSansWhiteA700 =>
      theme.textTheme.bodyLarge!.dMSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargePoppinsWhiteA700 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.whiteA700.withOpacity(0.64),
        fontSize: 17.fSize,
      );
  static get bodyMediumDMSansGray60003 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.gray60003,
        fontSize: 15.fSize,
      );
  static get bodyMediumDMSansWhiteA700 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.55),
      );
  static get bodyMediumRobotoWhiteA700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.64),
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
  static get bodySmallBluegray30001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodySmallBluegray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001.withOpacity(0.53),
        fontSize: 10.fSize,
      );
  static get bodySmallDMSansGray60003 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.gray60003,
      );
  static get bodySmallDMSansWhiteA700 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallDMSansWhiteA700_1 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.55),
      );
  static get bodySmallRoboto => theme.textTheme.bodySmall!.roboto;
  static get bodySmallRobotoPrimary =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallRobotoWhiteA700 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallRobotoWhiteA700Light =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallRobotoWhiteA700Light_1 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallRobotoWhiteA700_1 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
      );
  static get bodySmallTitilliumWebErrorContainer =>
      theme.textTheme.bodySmall!.titilliumWeb.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallTitilliumWebGray60001 =>
      theme.textTheme.bodySmall!.titilliumWeb.copyWith(
        color: appTheme.gray60001,
        fontSize: 10.fSize,
      );
  static get bodySmallTitilliumWebWhiteA700 =>
      theme.textTheme.bodySmall!.titilliumWeb.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
      );
  static get bodySmallWhiteA70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA70011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
      );
  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  static get bodySmallff000000 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
      );
  static get bodySmallff808080 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF808080),
      );
  static get bodySmallffa456f6 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFA456F6),
        fontSize: 11.fSize,
      );
  static get bodySmallffffffff => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodySmallffffffff11 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 11.fSize,
      );
  // Display text style
  static get displayMediumRobotoffa456f6 =>
      theme.textTheme.displayMedium!.roboto.copyWith(
        color: Color(0XFFA456F6),
      );
  static get displayMediumRobotoffffffff =>
      theme.textTheme.displayMedium!.roboto.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Headline text style
  static get headlineSmallPoppinsPrimary =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBlack900SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get labelLargeDMSans => theme.textTheme.labelLarge!.dMSans;
  static get labelLargeDMSans8cffffff =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: Color(0X8CFFFFFF),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansWhiteA700 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.55),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansffa456f6 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: Color(0XFFA456F6),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray60004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60004,
      );
  static get labelLargeRobotoOnError =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTitilliumWebGray200 =>
      theme.textTheme.labelLarge!.titilliumWeb.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTitilliumWebPrimary =>
      theme.textTheme.labelLarge!.titilliumWeb.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff76d4b5 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF76D4B5),
      );
  static get labelLargeffa456f6 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFA456F6),
      );
  static get labelLargeffff897e => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFF897E),
      );
  // Poppins text style
  static get poppinsWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  static get poppinsWhiteA700Medium => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsWhiteA700Regular => TextStyle(
        color: appTheme.whiteA700.withOpacity(0.64),
        fontSize: 4.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsWhiteA700SemiBold => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  // Roboto text style
  static get robotoBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).roboto;
  static get robotoOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).roboto;
  // Title text style
  static get titleLargeDeeporange200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepOrange200,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeIndigoA10001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigoA10001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePurpleA100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.purpleA100,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRobotoPrimary =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRobotoPrimarySemiBold =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeTealA100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.tealA100,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeTitilliumWeb =>
      theme.textTheme.titleLarge!.titilliumWeb.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeTitilliumWebPrimary =>
      theme.textTheme.titleLarge!.titilliumWeb.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeTitilliumWebRegular =>
      theme.textTheme.titleLarge!.titilliumWeb.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBluegray40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansGray60003 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray60003,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansWhiteA700 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray60004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60004,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumWhiteA700Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700Medium_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmall14_1 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 14.fSize,
      );
  static get titleSmallDMSansGray70001 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray70001,
      );
  static get titleSmallDMSansWhiteA700 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.55),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray100,
        fontSize: 14.fSize,
      );
  static get titleSmallGray10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray10001,
        fontSize: 14.fSize,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
        fontSize: 14.fSize,
      );
  static get titleSmallGray5002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5002,
        fontSize: 14.fSize,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 14.fSize,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallPrimary14 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallRobotoPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallRoboto_1 => theme.textTheme.titleSmall!.roboto;
  static get titleSmallff000000 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 14.fSize,
      );
  static get titleSmallff76d4b5 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF76D4B5),
        fontSize: 14.fSize,
      );
  static get titleSmallffa456f6 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFA456F6),
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get titilliumWeb {
    return copyWith(
      fontFamily: 'Titillium Web',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
