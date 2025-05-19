import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../account/widget/account_scope.dart';
import '../../data/events_repository_impl.dart';
import '../../domain/events_bloc/events_bloc.dart';

class EventsScope extends StatelessWidget {
  final Widget child;

  const EventsScope({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
    create:
        (context) {
            final dio = AccountScope.dioOf(context);
            return EventsBloc(EventsRepositoryImpl(dio: dio))
              ..add(EventsStarted());
    },
    child: child,
  );
}
