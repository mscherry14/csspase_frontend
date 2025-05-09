import 'dart:math' show sqrt;

import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class WalletIconPainter extends CustomPainter {
  final double area = 26 * 24;
  final double width = -26 * 0.5;
  final double height = -24 * 0.5;
  final Color color;
  final double dimension;

  const WalletIconPainter({required this.dimension, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(dimension / sqrt(area));

    canvas.drawPath(
      parseSvgPathData(
        """M24.2 17.32v1a1 1 0 0 0 1-1h-1Zm0-6.16h1a1 1 0 0 0-1-1v1ZM7.42 5.279A1 1 0 1 0 8.5 6.96L7.42 5.28ZM15.8 1.08l.79-.614a1 1 0 0 0-1.33-.227l.54.841Zm3.13 5.654a1 1 0 0 0 1.58-1.228l-1.58 1.228ZM24.2 17.32v-1h-3.64v2h3.64v-1Zm-3.64-6.16v1h3.64v-2h-3.64v1Zm3.64 0h-1v6.16h2v-6.16h-1Zm-6.72 3.08h1a2.08 2.08 0 0 1 2.08-2.08v-2a4.08 4.08 0 0 0-4.08 4.08h1Zm3.08 3.08v-1a2.08 2.08 0 0 1-2.08-2.08h-2a4.08 4.08 0 0 0 4.08 4.08v-1ZM7.96 6.12l.54.841 7.84-5.04-.54-.841-.54-.841-7.84 5.04.54.841Zm7.84-5.04-.79.614 3.92 5.04.79-.614.79-.614-3.92-5.04-.79.614ZM2.92 6.12v1h19.04v-2H2.92v1Zm19.04 16.8v-1H2.92v2h19.04v-1ZM1.8 21.8h1V7.24h-2V21.8h1Zm1.12 1.12v-1a.12.12 0 0 1-.12-.12h-2c0 1.17.95 2.12 2.12 2.12v-1Zm20.16-1.12h-1a.12.12 0 0 1-.12.12v2c1.17 0 2.12-.95 2.12-2.12h-1ZM21.96 6.12v1a.12.12 0 0 1 .12.12h2c0-1.17-.95-2.12-2.12-2.12v1Zm-19.04 0v-1C1.75 5.12.8 6.07.8 7.24h2a.12.12 0 0 1 .12-.12v-1Zm20.16 12.04h-1v3.64h2v-3.64h-1Zm0-10.92h-1v2.94h2V7.24h-1Z""",
      ).shift(Offset(width, height)),
      Paint()..color = color,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
