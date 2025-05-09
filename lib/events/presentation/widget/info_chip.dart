import 'package:flutter/material.dart';

import '../../../common/theme/theme.dart';

class InfoChip extends StatelessWidget {
  const InfoChip({super.key, required this.text, this.isDateStyle = true});

  final bool isDateStyle;
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
        color:
            isDateStyle
                ? customTheme.infoChipDateBackground
                : customTheme.infoChipBackground,
        borderRadius: BorderRadius.circular(
          paddingTheme.mediumBorderRadius,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: paddingTheme.smallPadding / 2,
          horizontal: paddingTheme.smallPadding,
        ),
        child: Text(
          text,
          style: textTheme.labelLarge?.apply(
            color:
                isDateStyle
                    ? customTheme.infoChipDateForeground
                    : customTheme.infoChipForeground,
          ),
        ),
      ),
    );
  }
}
