import 'dart:math' show sqrt;

import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class ShopIconPainter extends CustomPainter {
  final double area = 26 * 26;
  final double width = -26 * 0.5;
  final double height = -26 * 0.5;
  final Color color;
  final double dimension;

  const ShopIconPainter({required this.dimension, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(dimension / sqrt(area));

    canvas.drawPath(
      parseSvgPathData(
        """M17.2 8.8V5.3a4.2 4.2 0 1 0-8.4 0v3.5M4.515 24.9h16.97c1.5 0 2.715-1.193 2.715-2.665L22.46 8.1c0-1.472-1.215-2.665-2.715-2.665H5.915C4.415 5.435 3.2 6.628 3.2 8.1L1.8 22.235c0 1.472 1.216 2.665 2.715 2.665Z""",
      ).shift(Offset(width, height)),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round
        ..color = color,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
