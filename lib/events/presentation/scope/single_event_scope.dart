import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../account/widget/account_scope.dart';
import '../../data/events_repository_impl.dart';
import '../../domain/single_event_bloc/single_event_bloc.dart';

class SingleEventScope extends StatelessWidget {
  final Widget child;
  final String eventId;

  const SingleEventScope({
    required this.child,
    required this.eventId,
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
    create:
        (context) {
            final dio = AccountScope.dioOf(context);
            return SingleEventBloc(EventsRepositoryImpl(dio: dio))
              ..add(SingleEventEvent.init(eventId: eventId));
    },
    child: child,
  );
}
