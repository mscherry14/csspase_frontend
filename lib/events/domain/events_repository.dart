import 'package:csspace_app/events/domain/model/event_model.dart';

import '../../common/utils/simple_response.dart';
import 'model/event_short_model.dart';


abstract interface class EventsRepository {
  Future<SimpleResponse<List<EventShortModel>>> getEvents();
  Future<SimpleResponse<EventModel>> getEventById(String eventId);
}