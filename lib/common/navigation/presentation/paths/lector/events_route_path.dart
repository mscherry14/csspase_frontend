part of '../custom_route_path.dart';

sealed class EventRoutePath extends LectorRoutePath {
  const EventRoutePath();
}

class EventsListRoutePath extends EventRoutePath {
  const EventsListRoutePath();
}

@freezed
sealed class ConcreteEventRoutePath extends EventRoutePath with _$ConcreteEventRoutePath {
  const ConcreteEventRoutePath._();
  const factory ConcreteEventRoutePath.eventInfo({required String eventId}) = EventInfoRoutePath;
  const factory ConcreteEventRoutePath.sendToken({required String eventId, required String personId}) = EventTokenAccrualRoutePath;
  const factory ConcreteEventRoutePath.sendingSuccess({required String eventId, required String receiverName, required int amount}) = EventTokenSendingSuccessRoutePath;
  const factory ConcreteEventRoutePath.sendingError({required String eventId, String? errorMessage}) = EventTokenSendingErrorRoutePath;
}


