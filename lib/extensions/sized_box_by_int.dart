import 'package:flutter/material.dart';

extension MySizedBox on int {
  get height => SizedBox(height: this.toDouble());
  get width => SizedBox(width: this.toDouble());
}