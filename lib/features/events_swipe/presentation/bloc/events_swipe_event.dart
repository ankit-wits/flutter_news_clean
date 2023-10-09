part of 'events_swipe_bloc.dart';

sealed class EventsSwipeEvent extends Equatable {
  const EventsSwipeEvent();

  @override
  List<Object> get props => [];
}

final class GetEventsSwipe extends EventsSwipeEvent {}
