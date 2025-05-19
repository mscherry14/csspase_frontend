part of 'account_bloc.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState.unauthenticated({
    String? errorMessage,
  }) = AccountUnauthenticatedState;

  const factory AccountState.authenticated({
    required Set<Roles> userRoles,
  }) = AccountAuthenticatedState;
}
