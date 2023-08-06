import 'package:cat_test/data/fact/model/fact.dart';
import 'package:cat_test/domain/fact/repository/fact_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'facts_state.dart';
part 'facts_event.dart';
part 'facts_bloc.freezed.dart';

@injectable
class FactsBloc extends Bloc<FactsEvent, FactsState> {
  final FactRepository _factRepository;

  FactsBloc(this._factRepository) : super(const FactsState.loadInProgress()) {
    on<_GetHistory>(_getHistory);
  }

  ///get all facts history
  Future<void> _getHistory(_GetHistory event, Emitter<FactsState> emit) async {
    final history = await _factRepository.getFactsHistory();

    emit(_Loaded(facts: history));
  }
}
