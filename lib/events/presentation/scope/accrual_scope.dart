import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/mocked_accrual_repository_impl.dart';
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
    create:
        (context) =>
            AccrualBloc(SimpleAccrualRepositoryImpl())
              ..add(InitEvent(eventId: eventId, recipientId: recipientId)),
    child: child,
  );
}
