import 'package:csspace_app/wallet/domain/balance_bloc/balance_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../account/widget/account_scope.dart';
import '../data/balance_repository_impl.dart';
import '../data/history_repository_impl.dart';
import '../domain/history_bloc/history_bloc.dart';

class WalletScope extends StatelessWidget {
  final Widget child;

  const WalletScope({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => BalanceBloc(BalanceRepositoryImpl(dio: AccountScope.dioOf(context)))..add(BalanceReload())), //todo: get it?
      BlocProvider(create: (context) => HistoryBloc(HistoryRepositoryImpl(dio: AccountScope.dioOf(context)))..add(HistoryReload())), //todo: get it?
    ],
    child: child,
  );
}
