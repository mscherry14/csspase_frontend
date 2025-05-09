import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/paths/auth_extension.dart';

part 'navigation_event.dart';

part 'navigation_state.dart';

part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {

  NavigationBloc()
    : super(NavigationState(navigationMode: Roles.student)) {
    on<NavigationEvent>(
      (event, emit) => switch (event) {
        NavigationChanged() => _changeNavigation(event, emit),
      },
    );
  }

  Future<void> _changeNavigation(NavigationChanged event, Emitter emit) async {
    if (state.navigationMode != event.navigationMode) {
      emit(NavigationState(navigationMode: event.navigationMode));
    }
  }
}
