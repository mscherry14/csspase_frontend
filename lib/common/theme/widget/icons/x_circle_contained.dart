import 'dart:math' show sqrt;

import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class XCircleContainedIconPainter extends CustomPainter {

  final double area = 20 * 20;
  final double width = -20 * 0.5;
  final double height = -20 * 0.5;
  final Color color;
  final double dimension;
  
  const XCircleContainedIconPainter({required this.dimension, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(dimension / sqrt(area));

    canvas.drawPath(
        parseSvgPathData(
            """M13.89 7.525a1 1 0 0 0-1.415-1.414l1.414 1.414Zm-7.78 4.95a1 1 0 1 0 1.415 1.414l-1.414-1.414Zm6.365 1.414a1 1 0 0 0 1.414-1.414l-1.414 1.414Zm-4.95-7.778a1 1 0 0 0-1.414 1.414l1.414-1.414ZM19 10h-1a8 8 0 0 1-8 8v2c5.523 0 10-4.477 10-10h-1Zm-9 9v-1a8 8 0 0 1-8-8H0c0 5.523 4.477 10 10 10v-1Zm-9-9h1a8 8 0 0 1 8-8V0C4.477 0 0 4.477 0 10h1Zm9-9v1a8 8 0 0 1 8 8h2c0-5.523-4.477-10-10-10v1Zm3.182 5.818-.707-.707-3.182 3.182L10 10l.707.707 3.182-3.182-.707-.707ZM10 10l-.707-.707-3.182 3.182.707.707.707.707 3.182-3.182L10 10Zm3.182 3.182.707-.707-3.182-3.182L10 10l-.707.707 3.182 3.182.707-.707ZM10 10l.707-.707L7.525 6.11l-.707.707-.707.707 3.182 3.182L10 10Z""").shift(Offset(width,height)),
        Paint()..color = color
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}