import 'package:cat_test/data/fact/data_source/fact_local_data_source.dart';
import 'package:cat_test/data/fact/model/fact.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FactLocalDataSource)
class FactLocalDataSourceImpl implements FactLocalDataSource {
  final _factsBox = 'facts';

  @override
  Future<void> saveFact(Fact fact) async {
    var box = await Hive.openBox(_factsBox);

    box.add(fact);
  }

  @override
  Future<List<Fact>> getFactHistory() async {
    var box = await Hive.openBox(_factsBox);

    return box.values.map((e) => e as Fact).toList();
  }
}
