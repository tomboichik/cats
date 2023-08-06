// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/fact/client/fact_client.dart' as _i4;
import '../../data/fact/data_source/fact_local_data_source.dart' as _i5;
import '../../data/fact/data_source/fact_local_data_source_impl.dart' as _i6;
import '../../domain/fact/repository/fact_repository.dart' as _i7;
import '../../domain/fact/repository/fact_repository_impl.dart' as _i8;
import '../../presentation/fact/bloc/fact_bloc.dart' as _i10;
import '../../presentation/facts/bloc/facts_bloc.dart' as _i9;
import '../network/dio_module.dart' as _i11;
import '../network/retrofit_module.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final retrofitModule = _$RetrofitModule();
    gh.factory<_i3.Dio>(() => dioModule.dio);
    gh.factory<_i4.FactClient>(
        () => retrofitModule.getFactClient(gh<_i3.Dio>()));
    gh.factory<_i5.FactLocalDataSource>(() => _i6.FactLocalDataSourceImpl());
    gh.factory<_i7.FactRepository>(() => _i8.FactRepositoryImpl(
          gh<_i4.FactClient>(),
          gh<_i5.FactLocalDataSource>(),
        ));
    gh.factory<_i9.FactsBloc>(() => _i9.FactsBloc(gh<_i7.FactRepository>()));
    gh.factory<_i10.FactBloc>(() => _i10.FactBloc(gh<_i7.FactRepository>()));
    return this;
  }
}

class _$DioModule extends _i11.DioModule {}

class _$RetrofitModule extends _i12.RetrofitModule {}
