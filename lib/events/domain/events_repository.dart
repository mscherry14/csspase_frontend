import 'package:csspace_app/events/domain/model/event_model.dart';

import '../../common/utils/simple_response.dart';


abstract interface class EventsRepository {
  Future<SimpleResponse<List<EventModel>>> getEvents();
  Future<SimpleResponse<EventModel>> getEventById(String eventId);
}