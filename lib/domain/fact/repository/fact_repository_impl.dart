import 'package:cat_test/core/network/dio_module.dart';
import 'package:cat_test/data/fact/client/fact_client.dart';
import 'package:cat_test/data/fact/data_source/fact_local_data_source.dart';
import 'package:cat_test/data/fact/model/fact.dart';
import 'package:cat_test/domain/fact/repository/fact_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FactRepository)
class FactRepositoryImpl extends FactRepository {
  final FactClient _factClient;
  final FactLocalDataSource _factLocalDataSource;

  FactRepositoryImpl(
    this._factClient,
    this._factLocalDataSource,
  );

  final image = '$imageUrl?${DateTime.now().millisecondsSinceEpoch.toString()}';

  @override
  Future<Fact> getFact() async {
    Fact fact = (await _factClient.getFact()).copyWith(
      image: await _getRandomImage(),
      createdAt: DateTime.now(),
    );

    await _factLocalDataSource.saveFact(fact);

    return fact;
  }

  Future<Uint8List> _getRandomImage() async {
    Response response = await get(Uri.parse(imageUrl));

    return response.bodyBytes;
  }

  @override
  Future<List<Fact>> getFactsHistory() async {
    return _factLocalDataSource.getFactHistory();
  }
}
