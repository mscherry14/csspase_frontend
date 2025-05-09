import 'package:flutter/material.dart';

import '../../../common/theme/theme.dart';

class WarningChip extends StatelessWidget {
  const WarningChip({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;
    final textTheme = Theme.of(context).textTheme;

    final CustomThemeData customTheme =
        Theme.of(context).extension<CustomThemeData>() ??
        CustomThemeData.defaultThemeData;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: customTheme.warningColor.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(paddingTheme.smallBorderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: paddingTheme.smallPadding / 2,
          horizontal: paddingTheme.smallPadding,
        ),
        child: Text(
          text,
          style: textTheme.labelLarge?.apply(color: customTheme.warningColor),
            textWidthBasis: TextWidthBasis.longestLine,
        ),
      ),
    );
  }
}
