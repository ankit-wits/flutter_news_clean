part of 'events_swipe_bloc.dart';

sealed class EventsSwipeState extends Equatable {
  const EventsSwipeState();
  
  @override
  List<Object> get props => [];
}

final class EventsSwipeInitial extends EventsSwipeState {}
