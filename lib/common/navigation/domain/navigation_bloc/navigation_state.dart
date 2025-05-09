part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    required Roles navigationMode,
  }) = _NavigationState;

  const factory NavigationState.error({
    required Roles navigationMode,
    required String errorMessage,
  }) = _NavigationErrorState;
}
