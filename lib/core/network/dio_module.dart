import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const baseApi = 'https://catfact.ninja';

const imageUrl = 'https://cataas.com/cat';

@module
abstract class DioModule {
  @singleton
  final dio = Dio(
    BaseOptions(
      baseUrl: baseApi,
    ),
  );
}
