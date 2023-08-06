import 'package:cat_test/data/fact/model/fact.dart';
import 'package:hive/hive.dart';

void registerAdapters() {
  Hive.registerAdapter(FactAdapter());
}
