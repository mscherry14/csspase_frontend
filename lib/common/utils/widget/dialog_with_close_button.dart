import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class DialogWithCloseButton extends StatelessWidget {
  const DialogWithCloseButton({super.key, required this.child, required this.onCloseNavigation});

  final Widget child;
  final void Function() onCloseNavigation;

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;

    return SafeArea(
      child: Dialog(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 320),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(paddingTheme.largePadding),
                child: child,
              ),
              Positioned(
                top: paddingTheme.minimalElementDistance,
                right: paddingTheme.minimalElementDistance,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: onCloseNavigation,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
