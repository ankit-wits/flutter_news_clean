import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:latest_app/features/events_swipe/domain/usecases/get_events.dart';

part 'events_swipe_event.dart';
part 'events_swipe_state.dart';

class EventsSwipeBloc extends Bloc<EventsSwipeEvent, EventsSwipeState> {
  final GetEventsSwipeUseCase _getEventsSwipeUseCase;
  EventsSwipeBloc(this._getEventsSwipeUseCase) : super(EventsSwipeInitial()) {
    on<GetEventsSwipe>(
      (event, emit) async {
        final dataState = await _getEventsSwipeUseCase();

        if (dataState.data?.isNotEmpty ?? false) {
          var dat = dataState;
        } else {}
      },
    );
  }
}
