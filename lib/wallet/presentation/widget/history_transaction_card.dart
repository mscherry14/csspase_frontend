import 'package:csspace_app/common/locale/locale.dart';
import 'package:csspace_app/common/theme/theme.dart';
import 'package:flutter/material.dart';

class HistoryTransactionCard extends StatelessWidget {
  const HistoryTransactionCard({
    super.key,
    required this.headline,
    required this.dateTime,
    required this.variation,
  });

  final String headline;
  final DateTime dateTime;
  final int variation;

  @override
  Widget build(BuildContext context) {
    //получить design переменные из темы
    final theme = Theme.of(context);

    final paddingTheme = theme.extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    final CustomThemeData customTheme =
        theme.extension<CustomThemeData>() ?? CustomThemeData.defaultThemeData;
    final Color positiveColor = customTheme.positiveColor;
    final Color negativeColor = customTheme.negativeColor;

    //отрисовать карточку
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ), //todo: real maxHeight
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(paddingTheme.smallBorderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.all(paddingTheme.mediumPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      headline,
                      style: theme.textTheme.headlineMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: paddingTheme.minimalElementDistance,),
                    Text(
                      AppLocaleScope.of(context).transactionDateTime(dateTime),
                      style: theme.textTheme.labelMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: paddingTheme.largeElementDistance,
              ),
              Text(
                (variation > 0 ? "+" : '')
                    + AppLocaleScope.of(context).transactionVariation(variation),
                style: theme.textTheme.headlineMedium?.apply(
                  color: variation > 0
                      ? positiveColor
                      : (variation < 0 ? negativeColor : null),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
