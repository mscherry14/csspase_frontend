part of 'account_bloc.dart';

@freezed
sealed class AccountEvent with _$AccountEvent {
  factory AccountEvent.login() = AccountLogin;
}
