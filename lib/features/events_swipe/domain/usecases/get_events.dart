import 'package:latest_app/core/resources/data_state.dart';
import 'package:latest_app/core/usecases/usecase.dart';
import 'package:latest_app/features/events_swipe/domain/entities/events_swipe.dart';
import 'package:latest_app/features/events_swipe/domain/repository/events_repository.dart';

class GetEventsSwipeUseCase
    implements UseCase<DataState<List<EventsSwipeEntity>>, void> {
  final EventsSwipeRepository _eventsSwipeRepository;

  GetEventsSwipeUseCase(this._eventsSwipeRepository);

  @override
  Future<DataState<List<EventsSwipeEntity>>> call({void params}) {
    return _eventsSwipeRepository.getEventsSwipe();
  }
}
