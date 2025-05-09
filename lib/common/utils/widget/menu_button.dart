import 'package:csspace_app/common/navigation/navigation.dart';
import 'package:csspace_app/common/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation/presentation/paths/auth_extension.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showCustomOverlay(context);
      },
      icon: CustomIcon(iconPainter: CustomIcons.wallet),
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
                  child: BlocBuilder<NavigationBloc, NavigationState>(
                    builder: (context, state) {
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          spacing: paddingTheme.largeElementDistance,
                          children: [
                            SizedBox(height: kToolbarHeight, width: double.infinity,),
                            MenuNavTile(
                              role: Roles.student,
                              isSelected: Roles.student == state.navigationMode,
                            ),
                            MenuNavTile(
                              role: Roles.lector,
                              isSelected: Roles.lector == state.navigationMode,
                            ),
                          ],
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
        BlocProvider.of<NavigationBloc>(context).add(NavigationChanged(role));
      },
      child: Text(
        role.name,
        style: TextStyle(
          color:
              isSelected
                  ? BottomNavigationBarTheme.of(context).selectedItemColor
                  : BottomNavigationBarTheme.of(context).unselectedItemColor,
        ),
      ),
    );
  }
}
