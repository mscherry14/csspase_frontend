import 'package:csspace_app/common/theme/widget/constants/dark_theme_colors.dart';
import 'package:csspace_app/common/theme/widget/model/app_theme.dart';
import 'package:csspace_app/common/theme/widget/theme_data/padding_theme_data.dart';
import 'package:flutter/material.dart';

import '../theme_data/custom_theme_data.dart';
import 'custom_text_theme.dart';

class DarkAppTheme implements AppTheme {
  const DarkAppTheme();

  @override
  ThemeData get theme => ThemeData.dark().copyWith(
    extensions: [
      PaddingAndRadiusThemeData(),
      CustomThemeData(
        positiveColor: DarkThemeConstants.positiveGreen,
        warningColor: DarkThemeConstants.warning,
        infoChipBackground: DarkThemeConstants.lightOnCard,
        infoChipForeground: DarkThemeConstants.text,
        infoChipDateBackground: DarkThemeConstants.text,
        infoChipDateForeground: DarkThemeConstants.background,
      ),
    ],
    textTheme: textTheme,
    scaffoldBackgroundColor: DarkThemeConstants.background,
    cardColor: DarkThemeConstants.card,
    dividerColor: DarkThemeConstants.text,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: DarkThemeConstants.text,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: textTheme.headlineMedium,
    ),

    ///elevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        textStyle: textTheme.bodySmall?.apply(fontWeightDelta: 3),
        backgroundColor: DarkThemeConstants.text,
        foregroundColor: DarkThemeConstants.background,
        disabledBackgroundColor: DarkThemeConstants.lightOnCard,
        disabledForegroundColor: DarkThemeConstants.unhighlighted,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)), // <-- Radius
        ),
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: DarkThemeConstants.card,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      iconColor: DarkThemeConstants.text,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: DarkThemeConstants.background,
      selectedIconTheme: IconThemeData(
        color: DarkThemeConstants.text,
        size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        color: DarkThemeConstants.unhighlighted,
        size: 20,
      ),
      selectedItemColor: DarkThemeConstants.text,
      unselectedItemColor: DarkThemeConstants.unhighlighted,
      selectedLabelStyle: textTheme.labelLarge,
      unselectedLabelStyle: textTheme.labelMedium,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      // enableFeedback,
      // landscapeLayout,
    ),

    inputDecorationTheme: InputDecorationTheme(
      isCollapsed: true,
      constraints: const BoxConstraints(
        minHeight: 56,
        maxHeight: 56,
      ),
      contentPadding: const EdgeInsets.all(16.0),
      labelStyle: textTheme.bodyMedium?.apply(
        color: DarkThemeConstants.unhighlighted,
      ),
      hintStyle: textTheme.bodyMedium?.apply(
        color: DarkThemeConstants.unhighlighted,
      ),
      errorStyle: TextStyle(fontSize: 0),
      suffixStyle: textTheme.bodyMedium?.apply(
        color: DarkThemeConstants.unhighlighted,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      // isDense: true,
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: DarkThemeConstants.negativeRed),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: DarkThemeConstants.text, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: DarkThemeConstants.negativeRed, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: DarkThemeConstants.background,
      filled: true,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        overlayColor: DarkThemeConstants.text.withAlpha(30),
      )
    ),

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.white,
    ),

    //   outlinedButtonTheme: OutlinedButtonThemeData(
    //     style: OutlinedButton.styleFrom(
    //       textStyle: textTheme.bodyMedium,
    //       backgroundColor: Colors.white,
    //       foregroundColor: colors.purple,
    //       shape: const RoundedRectangleBorder(
    //         borderRadius: BorderRadius.all(Radius.circular(16)), // <-- Radius
    //       ),
    //       side: const BorderSide(
    //         color: colors.purple,
    //       ),
    //     ),
    //   ),
  );

  @override
  TextTheme get textTheme => customTextThemeFromColor(Colors.white);
}
