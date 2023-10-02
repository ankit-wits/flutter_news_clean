import 'package:latest_app/core/resources/data_state.dart';
import 'package:latest_app/features/events_swipe/domain/entities/events_swipe.dart';

abstract class EventsSwipeRepository {
  Future<DataState<List<EventsSwipeEntity>>> getEventsSwipe();
}
