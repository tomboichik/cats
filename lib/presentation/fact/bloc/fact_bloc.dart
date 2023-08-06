import 'package:cat_test/data/fact/model/fact.dart';
import 'package:cat_test/domain/fact/repository/fact_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fact_state.dart';
part 'fact_event.dart';
part 'fact_bloc.freezed.dart';

@injectable
class FactBloc extends Bloc<FactEvent, FactState> {
  final FactRepository _factRepository;

  FactBloc(this._factRepository) : super(const FactState.loadInProgress()) {
    on<_Fetch>(_onFetchCat);
  }

  /// Fetch cat fact event handler
  Future<void> _onFetchCat(
    _Fetch fetch,
    Emitter<FactState> emit,
  ) async {
    emit(const _LoadInProgress());

    try {
      emit(
        _IsLoaded(
          fact: await _factRepository.getFact(),
        ),
      );
    } catch (e) {
      emit(_Error(error: e.toString()));
    }
  }
}
