import 'package:csspace_app/common/theme/theme.dart';
import 'package:flutter/material.dart';

import '../constants/dark_theme_colors.dart';

class CustomThemeData extends ThemeExtension<CustomThemeData> {
  const CustomThemeData({
    this.walletImage,
    this.positiveColor = Colors.green,
    this.warningColor = Colors.orange,
    this.negativeColor = Colors.red,
    this.infoChipDateBackground =  DarkThemeConstants.text,
    this.infoChipDateForeground =  DarkThemeConstants.background,
    this.infoChipBackground = DarkThemeConstants.lightOnCard,
    this.infoChipForeground = DarkThemeConstants.text,
  });

  final AssetImage? walletImage;
  final Color positiveColor;
  final Color warningColor;
  final Color negativeColor;
  final Color infoChipDateBackground;
  final Color infoChipDateForeground;
  final Color infoChipBackground;
  final Color infoChipForeground;

  @override
  ThemeExtension<CustomThemeData> copyWith({
    AssetImage? walletImage,
    Color? positiveColor,
    Color? warningColor,
    Color? negativeColor,
  }) {
    return CustomThemeData(
      walletImage: walletImage ?? this.walletImage,
      positiveColor: positiveColor ?? this.positiveColor,
      warningColor: warningColor ?? this.warningColor,
      negativeColor: negativeColor ?? this.negativeColor,
    );
  }

  @override
  ThemeExtension<CustomThemeData> lerp(
    ThemeExtension<CustomThemeData>? other,
    double t,
  ) {
    if (other is! CustomThemeData) {
      return this;
    }

    return CustomThemeData(
      walletImage: t > 0.5 ? walletImage : other.walletImage,
      positiveColor: Color.lerp(positiveColor, other.positiveColor, t)!,
      warningColor: Color.lerp(warningColor, other.warningColor, t)!,
      negativeColor: Color.lerp(negativeColor, other.negativeColor, t)!,
    );
  }

  static CustomThemeData get defaultThemeData => const CustomThemeData(
    walletImage: AssetImage('assets/images/wallet.png'),
    positiveColor: Colors.green,
    warningColor: Colors.orange,
    negativeColor: Colors.red,
    infoChipBackground: DarkThemeConstants.lightOnCard,
    infoChipForeground: DarkThemeConstants.text,
    infoChipDateBackground: DarkThemeConstants.text,
    infoChipDateForeground: DarkThemeConstants.background,
  );
}
