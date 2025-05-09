import 'package:csspace_app/common/locale/locale.dart';
import 'package:csspace_app/common/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../domain/model/status_enum.dart';

class OrderCard extends StatelessWidget {
  const OrderCard(
      {super.key,
      this.pic,
      required this.productName,
      required this.dateTime,
      required this.price,
      required this.status});

  final Widget? pic;
  final String productName;
  final DateTime dateTime;
  final int price;
  final StatusEnum status; //todo: ???

  @override
  Widget build(BuildContext context) {
    final cardColor = Theme.of(context).cardColor;
    final textTheme = Theme.of(context).textTheme;
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;

    final Widget picture = ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(paddingTheme.mediumBorderRadius),
        bottomLeft: Radius.circular(paddingTheme.mediumBorderRadius),
      ),
      child: pic ??
          const ColoredBox(color: Colors.white, child: SizedBox.expand()),
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(paddingTheme.mediumBorderRadius),
      ),
      child: IntrinsicHeight(
      //ConstrainedBox(
       // constraints: BoxConstraints(maxHeight: 200), //todo: IntrinsicHeight??? Constraints???
        child: Row(
          children: [
            // Левая часть — градиентная полоска
            Expanded(
              //todo: flex until fix maxWidht
              flex: 3, child: picture,
            ),
            // Правая часть — текст и кнопки
            Expanded(
              flex: 7,
              child: Padding(
                padding: EdgeInsets.all(paddingTheme.mediumPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style:
                          textTheme.headlineMedium, //done
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: paddingTheme.mediumElementDistance),
                    Text(
                      AppLocaleScope.of(context).priceOrderCard(price),
                    ),
                    SizedBox(height: paddingTheme.mediumElementDistance),
                    StatusTile(status),
                    SizedBox(height: paddingTheme.mediumElementDistance),
                    Text(
                      AppLocaleScope.of(context).orderDateTime(dateTime),
                      style: textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatusTile extends StatelessWidget {
  const StatusTile(
    this.status, {
    super.key,
  });

  final StatusEnum status;

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;
    final textTheme = Theme.of(context).textTheme;

    final CustomThemeData customTheme =
        Theme.of(context).extension<CustomThemeData>() ?? CustomThemeData.defaultThemeData;
    final Color positiveColor = customTheme.positiveColor;
    final Color negativeColor = customTheme.negativeColor;
    final Color warningColor = customTheme.warningColor;

    colorFromStatus(StatusEnum status) =>
        switch (status) {
          StatusEnum.waiting => warningColor,
          StatusEnum.completed => positiveColor,
          StatusEnum.rejected => negativeColor,
        };

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorFromStatus(status).withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(paddingTheme.smallBorderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: paddingTheme.smallPadding / 2,
            horizontal: paddingTheme.smallPadding),
        child: Text(AppLocaleScope.of(context).orderStatus(status.text),
            style: textTheme.labelLarge
                ?.apply(color: colorFromStatus(status))
            ),
      ),
    );
  }
}
