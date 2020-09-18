import 'package:flutter/material.dart';

class CircleDto {
  final double initialRadius;
  final double finalRadius;
  final Color backgroundColor;

  const CircleDto({
    @required this.initialRadius,
    @required this.finalRadius,
    @required this.backgroundColor,
  })  : assert(initialRadius != null),
        assert(backgroundColor != null),
        assert(finalRadius != null);
}
