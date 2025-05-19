import 'dart:math' show sqrt;

import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class HamburgerMenuIconPainter extends CustomPainter {
  final double area = 24 * 20;
  final double width = -24 * 0.5;
  final double height = -20 * 0.5;
  final Color color;
  final double dimension;

  const HamburgerMenuIconPainter({required this.dimension, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(dimension / sqrt(area));

    canvas.drawPath(
      parseSvgPathData(
        """M20 16H4M20 10H4M20 4H4""",
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
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
