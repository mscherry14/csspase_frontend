import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:csspace_app/events/domain/model/event_info_model.dart';
import 'package:csspace_app/events/domain/model/event_model.dart';
import 'package:csspace_app/events/domain/model/lector_model.dart';
import 'package:csspace_app/events/domain/model/participant_model.dart';


import '../domain/events_repository.dart';
import '../domain/model/event_short_model.dart';

class SimpleEventsRepositoryImpl implements EventsRepository {
  @override
  Future<SimpleResponse<EventModel>> getEventById(String eventId) async {
    return SimpleOkResponse(
      payload: EventModel(
        id: 'id',
        headline: 'headline',
        infoList: [
          EventInfoModel(text: '18/05/2025 / ВС', isDate: true),
          EventInfoModel(text: '17:00-18:00', isDate: true),

        ],
        deadline: DateTime(2025, 5, 7),
        teachersList: [LectorModel(id: 'id', name: 'Препод Преподович', role: 'teacher')],
        participantsList: List.generate(20, (index) {
          return ParticipantModel(
            sent: index * 5, id: '', name: 'Акакий Акакиевич',
          );
        }),
        actualBalance: 5000,
        allBalance: 5000,
      ),
    );
  }

  @override
  Future<SimpleResponse<List<EventShortModel>>> getEvents() async {
    return SimpleOkResponse(
      payload: [
        EventShortModel(
          id: 'id0',
          headline: "Нелинейная оптимизация без ограничений",
          infoList: [
            EventInfoModel(text: 'Весна 2025', isDate: false),
            EventInfoModel(text: 'ПОМИ РАН', isDate: false),
          ],
          deadline: DateTime(2026),
          actualBalance: 200,
          allBalance: 1000,
        ),

        EventShortModel(
          id: 'id1',
          headline: "Как оцифровать качество Поиска: от случайных запросов до ключевых метрик",
          infoList: [
            EventInfoModel(text: '18/05/2025 / ВС', isDate: true),
            EventInfoModel(text: '14:00-16:00', isDate: true),
            EventInfoModel(text: 'ПОМИ РАН', isDate: false),
          ],
          deadline: DateTime(2025, 5, 20, 23, 59),
          actualBalance: 300,
          allBalance: 1500,
        ),

        EventShortModel(
          id: 'id2',
          headline: "Случайные графы",
          infoList: [
            EventInfoModel(text: 'ПОМИ РАН', isDate: false),
          ],
          deadline: DateTime(2026),
          actualBalance: 20,
          allBalance: 5000,
        ),

        EventShortModel(
          id: 'id3',
          headline: "Видеокарты: что они могут? Могут ли они хоть что-то?",
          infoList: [
            EventInfoModel(text: 'ПОМИ РАН', isDate: false),
          ],
          deadline: DateTime(2026),
          actualBalance: 0,
          allBalance: 1000,
        ),

        EventShortModel(
          id: 'id4',
          headline: "Как тысячи роботов-сортировщиков работают на автоматизированных складах?",
          infoList: [
            EventInfoModel(text: '11/04/2025 / ПТ', isDate: true),
            EventInfoModel(text: '18:00-20:00', isDate: true),
            EventInfoModel(text: 'ПОМИ РАН', isDate: false),
          ],
          deadline: DateTime(2026),
          actualBalance: 900,
          allBalance: 1000,
        ),
      ],
    );
  }
}
