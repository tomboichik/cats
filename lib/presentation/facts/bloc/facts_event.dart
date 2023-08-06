part of 'facts_bloc.dart';

@freezed
class FactsEvent with _$FactsEvent {
  const factory FactsEvent.getHistory() = _GetHistory;
}
