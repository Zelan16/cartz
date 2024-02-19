import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargePoppinsGray50 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray50,
        fontSize: 18.fSize,
      );
  static get bodyLargePoppinsLime900a0 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.lime900A0,
        fontSize: 18.fSize,
      );
  static get bodyLargePoppinsOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargePoppinsPrimaryContainer =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumOpenSansErrorContainer =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
      );
  // Headline text style
  static get headlineLargeBluegray800 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 32.fSize,
      );
  static get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 33.fSize,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallNunitoBlack900 =>
      theme.textTheme.headlineSmall!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
      );
  static get headlineSmallRobotoOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 24.fSize,
        fontWeight: FontWeight.w800,
      );
  // Title text style
  static get titleLargeGray300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray300,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeGray800a8 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray800A8,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeNunito => theme.textTheme.titleLarge!.nunito.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeOutfit => theme.textTheme.titleLarge!.outfit.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOutfitOnPrimary =>
      theme.textTheme.titleLarge!.outfit.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRobotoGray800 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray80018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get titleMediumOpenSans =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansGray90002 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOpenSansOnPrimaryContainer =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.65),
        fontSize: 14.fSize,
      );
  static get titleSmallGray500a7 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500A7,
        fontSize: 14.fSize,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallOnPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainerMedium14 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
