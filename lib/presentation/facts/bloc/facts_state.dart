part of 'facts_bloc.dart';

@freezed
class FactsState with _$FactsState {
  const factory FactsState.loadInProgress() = _LoadInProgress;

  const factory FactsState.loaded({required List<Fact> facts}) = _Loaded;
}
