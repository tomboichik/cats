import 'package:cat_test/data/fact/client/fact_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RetrofitModule {
  FactClient getFactClient(Dio dio) => FactClient(dio);
}
