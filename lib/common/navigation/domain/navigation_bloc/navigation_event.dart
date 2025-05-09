part of 'navigation_bloc.dart';

@freezed
sealed class NavigationEvent with _$NavigationEvent {
  factory NavigationEvent.navigationChanged(Roles navigationMode) = NavigationChanged;
}
