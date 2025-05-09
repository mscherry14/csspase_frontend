import 'package:csspace_app/wallet/domain/balance_bloc/balance_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import '../../navigation/navigation.dart';
import '../../theme/theme.dart';
import 'menu_button.dart';

class StudentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StudentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: paddingTheme.mediumPadding,
            vertical: paddingTheme.smallPadding),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              if (Router.of(context).routerDelegate.currentConfiguration is! WalletRoutePath)
              InkWell(
                onTap: () {
                  Router.of(context)
                      .routerDelegate
                      .setNewRoutePath(WalletRoutePath()); //todo: navigation
                },
                child: Padding(
                  padding: EdgeInsets.all(paddingTheme.smallPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomIcon(
                        iconPainter: CustomIcons.wallet,
                      ),
                      SizedBox(width: paddingTheme.mediumElementDistance),
                      BlocBuilder<BalanceBloc, BalanceState>(
                        buildWhen: (prev, curr) {
                          return prev != curr;
                        },
                        builder: (BuildContext context, BalanceState state) {
                          return Text(
                            "${state.balance}",
                            style: Theme.of(context).textTheme.bodyLarge,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox.shrink()),
              MenuButton(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); //todo: fromtheme?
}
