import 'package:flutter/material.dart';

import '../../locale/locale.dart';
import '../../theme/theme.dart';

class SomethingWentWrongDialogBody extends StatelessWidget {
  const SomethingWentWrongDialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;
    final customTheme =
        Theme.of(context).extension<CustomThemeData>() ??
            CustomThemeData.defaultThemeData;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(paddingTheme.smallPadding),
          child: CustomIcon(
            iconPainter: CustomIcons.cancelCircleContained,
            style: IconThemeData(color: customTheme.negativeColor, size: 48),
          ),
        ),
        Text(
          AppLocaleScope.of(context).smthWentWrong,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.apply(color: customTheme.negativeColor),
        ),
        SizedBox(height: paddingTheme.mediumElementDistance),
        Text(
          AppLocaleScope.of(context).smthWentWrongLabel,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: paddingTheme.largeElementDistance),
      ],
    );
  }
}
