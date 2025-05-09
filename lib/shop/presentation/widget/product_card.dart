import 'package:csspace_app/common/locale/locale.dart';
import 'package:flutter/material.dart';

import '../../../common/navigation/navigation.dart';
import '../../../common/theme/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.price,
    this.pic,
    required this.id,
    required this.name,
  });

  final Widget? pic;
  final String id;
  final String name;
  final int price;

  @override
  Widget build(BuildContext context) {
    final cardColor = Theme.of(context).cardColor;
    final textTheme = Theme.of(context).textTheme;
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    final Widget picture =
        pic ??
        Container(
          height: 180,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF5E9CC), // светлый цвет
                Color(0xFFC19A84), // тёмно-бежевый
              ],
            ),
          ),
        ); //todo: remove this shit

    return DecoratedBox(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(paddingTheme.mediumBorderRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Верхняя часть с градиентом
          picture,
          // Нижняя часть с текстом и кнопкой
          Padding(
            padding: EdgeInsets.all(paddingTheme.smallPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(name, style: textTheme.headlineMedium),
                    ),
                    SizedBox(width: paddingTheme.mediumElementDistance),
                    Text(
                      AppLocaleScope.of(context).productPrice(price),
                      style: textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: paddingTheme.mediumElementDistance),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Router.of(context).routerDelegate.setNewRoutePath(
                        PurchaseConfirmationRoutePath(productId: id),
                      ); //todo: navigation scope/abstacrion
                    },
                    child: Text(
                      AppLocaleScope.of(context).buy,
                      style: textTheme.headlineSmall?.apply(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
