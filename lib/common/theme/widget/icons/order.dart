import 'dart:math' show sqrt;

import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class OrderIconPainter extends CustomPainter {
  final double area = 22 * 24;
  final double width = -22 * 0.5;
  final double height = -24 * 0.5;
  final Color color;
  final double dimension;

  const OrderIconPainter({required this.dimension, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(dimension / sqrt(area));

    canvas.drawPath(
      parseSvgPathData(
        """M6.1 7.1h9.8m-9.8 5.6h9.8M3.72 1.5h14.56c1.005 0 1.82.94 1.82 2.1v18.9l-3.033-2.1-3.034 2.1L11 20.4l-3.033 2.1-3.034-2.1L1.9 22.5V3.6c0-1.16.815-2.1 1.82-2.1Z""",
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
