part of 'fact_bloc.dart';

@freezed
class FactState with _$FactState {
  const factory FactState.loadInProgress() = _LoadInProgress;

  const factory FactState.isLoaded({
    required Fact fact,
  }) = _IsLoaded;

  const factory FactState.error({required String error}) = _Error;
}
