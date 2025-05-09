import 'dart:math' show sqrt;

import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class CheckContainedIconPainter extends CustomPainter {
  final double area = 20 * 20;
  final double width = -20 * 0.5;
  final double height = -20 * 0.5;
  final Color color;
  final double dimension;

  const CheckContainedIconPainter({
    required this.dimension,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(dimension / sqrt(area));

    canvas.drawPath(
      parseSvgPathData(
        """M13.142 7.983 8.875 12.25 7.42 10.796M10 1a9 9 0 1 0 0 18 9 9 0 0 0 0-18Z""",
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
