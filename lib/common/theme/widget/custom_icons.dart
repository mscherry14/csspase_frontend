import 'package:flutter/material.dart';

import 'icons/wallet.dart';
import 'icons/check_contained.dart';
import 'icons/order.dart';
import 'icons/shop.dart';
import 'icons/x_circle_contained.dart';

abstract final class CustomIcons {
  CustomIcons._();

  static CustomPainter wallet({
    required double size,
    required Color color,
  }) => WalletIconPainter(dimension: size, color: color);

  static CustomPainter shop({
    required double size,
    required Color color,
  }) => ShopIconPainter(dimension: size, color: color);

  static CustomPainter order({
    required double size,
    required Color color,
  }) => OrderIconPainter(dimension: size, color: color);

  static CustomPainter cancelCircleContained({
    required double size,
    required Color color,
  }) => XCircleContainedIconPainter(dimension: size, color: color);

  static CustomPainter checkContained({
    required double size,
    required Color color,
  }) => CheckContainedIconPainter(dimension: size, color: color);
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, this.style, required this.iconPainter});

  final CustomPainter Function({required double size, required Color color})
  iconPainter;
  final IconThemeData? style;

  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = IconTheme.of(context).merge(style);

    return SizedBox.square(
      dimension: iconTheme.size,
      child: Center(
        child: CustomPaint(
          painter: iconPainter(
            size: iconTheme.size ?? 24.0,
            color:
                iconTheme.color ??
                Theme.of(context).textTheme.bodyMedium?.color ??
                Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
