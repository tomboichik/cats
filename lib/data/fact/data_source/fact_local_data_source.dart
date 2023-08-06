import 'package:cat_test/data/fact/model/fact.dart';

abstract class FactLocalDataSource {
  Future<void> saveFact(Fact fact);

  Future<List<Fact>> getFactHistory();
}
