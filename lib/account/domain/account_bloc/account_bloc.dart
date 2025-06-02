import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/navigation/presentation/app_user_roles.dart';
import '../repositories/account_repository.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final AccountRepository _repository;

  AccountBloc(this._repository) : super(const AccountState.unauthenticated()) {
    on<AccountEvent>(
      (event, emit) async => switch (event) {
        AccountLogin() => await _login(event, emit),
      },
    );
  }

  Future<void> _login(AccountLogin event, Emitter emit) async {
    //check if authorized
    final check = await _repository.getAccount();
    switch (check) {
      case SimpleOkResponse(:final payload):
        emit(AccountState.authenticated(userRoles: payload ?? {Roles.user}));
      case SimpleErrorResponse(:final message, :final payload):
        //real login
        final res = await _repository.login();
        switch (res) {
          case SimpleOkResponse(:final payload):
            emit(
              AccountState.authenticated(userRoles: payload ?? {Roles.user}),
            );
          case SimpleErrorResponse(:final message, :final payload):
            emit(AccountState.unauthenticated(errorMessage: message));
        }
    }
  }
}
