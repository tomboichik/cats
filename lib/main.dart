import 'package:cat_test/core/adapter_register.dart';
import 'package:cat_test/core/app.dart';
import 'package:cat_test/core/injection/injectable.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  registerAdapters();
  configureDependencies();
  runApp(const App());
}
