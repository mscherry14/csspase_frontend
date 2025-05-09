import 'package:csspace_app/common/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:csspace_app/common/locale/locale.dart';

class WalletBalanceCard extends StatelessWidget {
  const WalletBalanceCard({super.key, required this.balance});
  final int balance;

  static const double minHeight = 120;
  static const double maxHeight = 240;

  @override
  Widget build(BuildContext context) {
    //получить design переменные из темы
    final theme = Theme.of(context);

    final paddingTheme = theme.extension<PaddingAndRadiusThemeData>() ?? PaddingAndRadiusThemeData.defaultThemeData;

    final customTheme = theme.extension<CustomThemeData>() ?? CustomThemeData.defaultThemeData;
    //получить тексты?
    //отрисовать карточку
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity, maxHeight: maxHeight,),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: customTheme.walletImage ?? AssetImage('assets/images/wallet.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(paddingTheme.mediumBorderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.all(paddingTheme.mediumPadding),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(AppLocaleScope.of(context).balanceCardLabel, style: theme.textTheme.bodyMedium,),
                Text(AppLocaleScope.of(context).balanceCardCount(balance), style: theme.textTheme.displayLarge,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
