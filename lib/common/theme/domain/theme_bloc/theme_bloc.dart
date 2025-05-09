import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../theme_mode_enum.dart';
import '../theme_repository.dart';

part 'theme_event.dart';

part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ThemeRepository _repository;

  ThemeBloc(this._repository)
    : super(ThemeState(themeMode: CustomThemeMode.dark)) {
    on<ThemeEvent>(
      (event, emit) => switch (event) {
        ThemeChanged() => _changeTheme(event, emit),
        ThemeReload() => _reloadTheme(event, emit),
        ThemeInit() => _getTheme(event, emit),
        ThemeEvent() => throw UnimplementedError(), //todo: fix that shit
      },
    );
  }

  Future<void> _getTheme(ThemeInit event, Emitter emit) async {
    final result = await _repository.getTheme();
    switch (result) {
      case SimpleOkResponse(:final payload):
        add(ThemeEvent.reload(SimpleResponse.ok(payload: payload)));
      case SimpleErrorResponse(:final message, :final payload):
        add(
          ThemeEvent.reload(
            SimpleResponse.error(payload: state.themeMode, message: message),
          ),
        );
    }
  }

  void _reloadTheme(ThemeReload event, Emitter emit) {
    final state = this.state;
    switch (event.response) {
      case SimpleOkResponse(:final payload):
        emit(ThemeState(themeMode: payload ?? state.themeMode));
      case SimpleErrorResponse(:final message, :final payload):
        emit(
          ThemeState.error(
            themeMode: payload ?? state.themeMode,
            errorMessage: message,
          ),
        );
    }
  }

  Future<void> _changeTheme(ThemeChanged event, Emitter emit) async {
    final state = this.state;
    final result = await _repository.setTheme(event.themeMode);
    switch (result) {
      case SimpleOkResponse(:final payload):
        add(ThemeEvent.reload(SimpleResponse.ok(payload: event.themeMode)));
      case SimpleErrorResponse(:final message, :final payload):
        add(
          ThemeEvent.reload(
            SimpleResponse.error(payload: state.themeMode, message: message),
          ),
        );
    }
  }
}
