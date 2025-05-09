import 'package:flutter/material.dart';

import '../../../common/locale/locale.dart';
import '../../../common/theme/theme.dart';

class EventBalanceWidget extends StatelessWidget {
  const EventBalanceWidget({super.key, required this.actualBalance, required this.allBalance});

  final int actualBalance;
  final int allBalance;

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomIcon(
          iconPainter: CustomIcons.wallet,
          style: IconThemeData(size: 32),
        ),
        SizedBox(width: paddingTheme.mediumElementDistance * 1.5),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocaleScope.of(context).eventBalance,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('$actualBalance', style: Theme.of(context).textTheme.headlineLarge),
                Text(
                  ' / $allBalance',
                  style: Theme.of(context).textTheme.headlineLarge?.apply(
                    color:
                    DarkThemeConstants
                        .unhighlighted, //TODO: get from customtheme
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}