import 'package:csspace_app/common/utils/simple_response.dart';

import 'package:csspace_app/events/domain/model/event_model.dart';
import 'package:csspace_app/events/domain/model/event_short_model.dart';
import 'package:dio/dio.dart';

import '../domain/events_repository.dart';

class EventsRepositoryImpl implements EventsRepository {

  final Dio dio;
  final CancelToken? cancelToken;

  EventsRepositoryImpl({required this.dio, this.cancelToken});

  @override
  Future<SimpleResponse<EventModel>> getEventById(String eventId) async {
    try {
      final res = await dio.get("/teacher/events/$eventId");
      if (res.statusCode == 200) {
        final eventData = res.data;
        final partRes = await dio.get("/teacher/events/$eventId/participants");
        if (res.statusCode == 200) {
          final partData = partRes.data;
          return SimpleOkResponse(payload: EventModel.fromJson(eventData, partData));
        }
        return SimpleErrorResponse(payload: EventModel.fromJson(eventData, []), message: 'cant load participants');
      }
      return SimpleErrorResponse(message: 'event getting error: unknown error', payload: null);
    } catch (e) {
      return SimpleErrorResponse(message: "event getting error: ${e.toString()}", payload: null);
    }
  }

  @override
  Future<SimpleResponse<List<EventShortModel>>> getEvents() async {
    try {
      final res = await dio.get("/teacher/events");
      if (res.statusCode == 200) {
        final List<EventShortModel> events = [];
        for (final elem in res.data) {
          events.add(EventShortModel.fromJson(elem));
        }
        return SimpleOkResponse(payload: events);
      }
      return SimpleErrorResponse(message: '', payload: null);
    } catch (e) {
      return SimpleErrorResponse(message: "events getting error: ${e.toString()}", payload: null);
    }
  }
}
