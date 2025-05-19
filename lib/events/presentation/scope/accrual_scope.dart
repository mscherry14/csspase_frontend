import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../account/widget/account_scope.dart';
import '../../data/accrual_repository.dart';
import '../../domain/accrual_bloc/accrual_bloc.dart';

class AccrualScope extends StatelessWidget {
  final Widget child;
  final String eventId;
  final String recipientId;

  const AccrualScope({
    required this.child,
    super.key,
    required this.eventId,
    required this.recipientId,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final dio = AccountScope.dioOf(context);
      return AccrualBloc(AccrualRepositoryImpl(dio: dio))
        ..add(InitEvent(eventId: eventId, recipientId: recipientId));
    },
    child: child,
  );
}
