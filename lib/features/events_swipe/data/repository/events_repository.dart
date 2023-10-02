import 'package:dio/dio.dart';
import 'package:latest_app/features/events_swipe/data/data_sources/remote/events_firestore_service.dart';
import 'package:latest_app/features/events_swipe/data/models/events_swipe.dart';
import 'package:latest_app/features/events_swipe/domain/repository/events_repository.dart';

import '../../../../core/resources/data_state.dart';

class EventsSwipeRepositoryImpl implements EventsSwipeRepository {
  final EventsSwipeFirestoreService _eventsSwipeFirestoreService;

  EventsSwipeRepositoryImpl(this._eventsSwipeFirestoreService);

  @override
  Future<DataState<List<EventsSwipeModel>>> getEventsSwipe() async {
    final httpResponse = await _eventsSwipeFirestoreService.getEventsSwipe();

    if (httpResponse.isNotEmpty) {
      return DataSuccess(httpResponse);
    } else {
      return DataFailed(DioException(requestOptions: RequestOptions()));
    }
  }
}
