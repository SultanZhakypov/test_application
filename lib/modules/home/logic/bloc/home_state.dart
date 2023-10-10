part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success(List<Docs>? movies) = _Success;
  const factory HomeState.error(dynamic error) = _Error;
}
