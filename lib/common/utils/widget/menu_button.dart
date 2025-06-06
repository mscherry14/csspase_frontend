import 'package:csspace_app/common/locale/locale.dart';
import 'package:csspace_app/common/navigation/navigation.dart';
import 'package:csspace_app/common/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../account/domain/account_bloc/account_bloc.dart';
import '../../../account/widget/account_scope.dart';
import '../../navigation/presentation/app_user_roles.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showCustomOverlay(context);
      },
      icon: CustomIcon(
        style: IconThemeData(
          color: Theme.of(context).textTheme.headlineMedium?.color,
        ),
        iconPainter: CustomIcons.hamburgerMenu,
      ),
    );
  }
}

void showCustomOverlay(BuildContext context) {
  final overlay = Overlay.of(context);
  final paddingTheme =
      Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
      PaddingAndRadiusThemeData.defaultThemeData;

  late OverlayEntry entry;

  entry = OverlayEntry(
    builder:
        (context) => Material(
          color: Colors.black54,
          child: GestureDetector(
            behavior:
                HitTestBehavior
                    .opaque, // важно: ловим касания даже по пустому месту
            onTap: () {
              entry.remove(); // закрываем overlay при нажатии вне меню
            },
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {}, // чтобы нажатия по меню не закрывали overlay
                child: ColoredBox(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: BlocBuilder<AccountBloc, AccountState>(
                    builder: (context, state) {
                      return SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: paddingTheme.largeElementDistance,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: kToolbarHeight,
                                width: double.infinity,
                              ),
                              if (AccountScope.of(context).contains(Roles.user))
                                MenuNavTile(
                                  role: Roles.user,
                                  isSelected:
                                      Roles.user ==
                                      AuthenticatedNavigation.fromRoutePath(
                                        (Router.of(context).routerDelegate
                                                as AuthenticatedRouterDelegate)
                                            .currentConfiguration, //todo: clear navigation
                                      ),
                                ),
                              if (AccountScope.of(
                                context,
                              ).contains(Roles.teacher))
                                MenuNavTile(
                                  role: Roles.teacher,
                                  isSelected:
                                      Roles.teacher ==
                                      AuthenticatedNavigation.fromRoutePath(
                                        (Router.of(context).routerDelegate
                                                as AuthenticatedRouterDelegate)
                                            .currentConfiguration, //todo: clear navigation
                                      ),
                                ),
                              SizedBox(
                                height: paddingTheme.mediumElementDistance,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
  );

  overlay.insert(entry);
}

class MenuNavTile extends StatelessWidget {
  const MenuNavTile({super.key, required this.role, required this.isSelected});

  final Roles role;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    // final customTheme =
    //     Theme.of(context).extension<CustomThemeData>() ??
    //     CustomThemeData.defaultThemeData;

    return TextButton(
      onPressed: () {
        (Router.of(context).routerDelegate as AuthenticatedRouterDelegate)
            .setNewRoutePath(
              role == Roles.user ? WalletRoutePath() : EventsListRoutePath(),
            ); //todo: clear navigation
      },
      child: Text(
        AppLocaleScope.of(context).roleApp(role.name),
        style: Theme.of(context).textTheme.bodyMedium?.apply(
          color:
              isSelected
                  ? BottomNavigationBarTheme.of(context).selectedItemColor
                  : BottomNavigationBarTheme.of(context).unselectedItemColor,
        ),
      ),
    );
  }
}
