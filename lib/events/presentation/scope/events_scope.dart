import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/mocked_Events_repository_impl.dart';
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
        (context) =>
            EventsBloc(SimpleEventsRepositoryImpl())
              ..add(EventsStarted()),
    child: child,
  );
}
