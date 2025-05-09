import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../locale_repository.dart';

part 'locale_bloc.freezed.dart';
part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final LocaleRepository _repository;

  LocaleBloc(this._repository)
    : super(
        const LocaleState(languageCode: "ru"), //todo:
      ) {
    on<LocaleEvent>(
      (event, emit) => switch (event) {
        LocaleChanged() => _changeLocale(event, emit),
        LocaleReload() => _reloadLocale(event, emit),
        LocaleInit() => _getLocale(event, emit),
        LocaleEvent() => throw UnimplementedError(), //todo: fix that shit
      },
    );
  }

  Future<void> _getLocale(LocaleInit event, Emitter emit) async {
    final result = await _repository.getLocale();
    switch (result) {
      case SimpleOkResponse(:final payload):
        add(LocaleEvent.reload(SimpleResponse.ok(payload: payload)));
      case SimpleErrorResponse(:final message, :final payload):
        add(
          LocaleEvent.reload(
            SimpleResponse.error(payload: state.languageCode, message: message),
          ),
        );
    }
  }

  void _reloadLocale(LocaleReload event, Emitter emit) {
    final state = this.state;
    switch (event.response) {
      case SimpleOkResponse(:final payload):
        emit(LocaleState(languageCode: payload ?? state.languageCode));
      case SimpleErrorResponse(:final message, :final payload):
        emit(
          LocaleState.error(
            languageCode: payload ?? state.languageCode,
            errorMessage: message,
          ),
        );
    }
  }

  Future<void> _changeLocale(LocaleChanged event, Emitter emit) async {
    final state = this.state;
    final result = await _repository.setLocale(event.languageCode);
    switch (result) {
      case SimpleOkResponse(:final payload):
        add(LocaleEvent.reload(SimpleResponse.ok(payload: event.languageCode)));
      case SimpleErrorResponse(:final message, :final payload):
        add(
          LocaleEvent.reload(
            SimpleResponse.error(payload: state.languageCode, message: message),
          ),
        );
    }
  }
}
