import 'dart:ui';

import 'package:flutter/material.dart';

class PaddingAndRadiusThemeData
    extends ThemeExtension<PaddingAndRadiusThemeData> {
  const PaddingAndRadiusThemeData({
    this.minimalElementDistance = 4.0,
    this.mediumElementDistance = 8.0,
    this.largeElementDistance = 16.0,
    this.smallPadding = 8.0,
    this.mediumPadding = 16.0,
    this.largePadding = 16.0,
    this.smallBorderRadius = 8.0,
    this.mediumBorderRadius = 16.0,
  });

  final double minimalElementDistance;
  final double mediumElementDistance;
  final double largeElementDistance;

  final double smallPadding;
  final double mediumPadding;
  final double largePadding;

  final double smallBorderRadius;
  final double mediumBorderRadius;

  static PaddingAndRadiusThemeData get defaultThemeData =>
      const PaddingAndRadiusThemeData();

  @override
  ThemeExtension<PaddingAndRadiusThemeData> copyWith({
    double? minimalElementDistance,
    double? mediumElementDistance,
    double? largeElementDistance,
    double? smallPadding,
    double? mediumPadding,
    double? largePadding,
    double? smallBorderRadius,
    double? mediumBorderRadius,
  }) {
    return PaddingAndRadiusThemeData(
      minimalElementDistance:
          minimalElementDistance ?? this.minimalElementDistance,
      mediumElementDistance:
          mediumElementDistance ?? this.mediumElementDistance,
      largeElementDistance: largeElementDistance ?? this.largeElementDistance,
      smallPadding: smallPadding ?? this.smallPadding,
      mediumPadding: mediumPadding ?? this.mediumPadding,
      largePadding: largePadding ?? this.largePadding,
      smallBorderRadius: smallBorderRadius ?? this.smallBorderRadius,
      mediumBorderRadius: mediumBorderRadius ?? this.mediumBorderRadius,
    );
  }

  @override
  ThemeExtension<PaddingAndRadiusThemeData> lerp(
      ThemeExtension<PaddingAndRadiusThemeData>? other, double t) {
    if (other is! PaddingAndRadiusThemeData) {
      return this;
    }

    return PaddingAndRadiusThemeData(
      minimalElementDistance:
          lerpDouble(minimalElementDistance, other.minimalElementDistance, t) ?? minimalElementDistance,
      mediumElementDistance:
          lerpDouble(mediumElementDistance, other.mediumElementDistance, t) ?? mediumElementDistance,
      largeElementDistance:
          lerpDouble(largeElementDistance, other.largeElementDistance, t) ?? largeElementDistance,
      smallPadding: lerpDouble(smallPadding, other.smallPadding, t) ?? smallPadding,
      mediumPadding: lerpDouble(mediumPadding, other.mediumPadding, t) ?? mediumPadding,
      largePadding: lerpDouble(largePadding, other.largePadding, t) ?? largePadding,
      smallBorderRadius:
          lerpDouble(smallBorderRadius, other.smallBorderRadius, t) ?? smallBorderRadius,
      mediumBorderRadius:
          lerpDouble(mediumBorderRadius, other.mediumBorderRadius, t) ?? mediumBorderRadius,
    );
  }
}
