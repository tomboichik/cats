import 'package:cat_test/data/fact/model/fact.dart';

abstract class FactRepository {
  Future<Fact> getFact();

  Future<List<Fact>> getFactsHistory();
}
