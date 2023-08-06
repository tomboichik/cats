import 'package:cat_test/data/fact/model/fact.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'fact_client.g.dart';

@RestApi()
abstract class FactClient {
  @injectable
  factory FactClient(Dio dio, {String? baseUrl}) = _FactClient;

  @GET("/fact")
  Future<Fact> getFact();
}
