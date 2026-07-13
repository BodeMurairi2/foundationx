import 'package:flutter/material.dart';

class AppPadding {
  AppPadding._();

  static const EdgeInsets screen =
      EdgeInsets.all(24);

  static const EdgeInsets page =
      EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20,
      );

  static const EdgeInsets card =
      EdgeInsets.all(20);

  static const EdgeInsets input =
      EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 18,
      );

  static const EdgeInsets section =
      EdgeInsets.symmetric(
        vertical: 16,
      );

  static const EdgeInsets chip =
      EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      );
}