import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension SizedBoxEtension on num {
  SizedBox get height => SizedBox(height: toDouble());
  SizedBox get width => SizedBox(width: toDouble());
}

extension IntExtemsion on int {
  String get sepratedWithComa {
    final numberFormat = NumberFormat.decimalPattern();

    return numberFormat.format(this);
  }
}
