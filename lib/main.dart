import 'package:chemtime/di.dart';
import 'package:chemtime/di_provider.dart';
import 'package:flutter/material.dart';

void main() {
  final DI di = DI();

  runApp(DIProvider(di));
}
