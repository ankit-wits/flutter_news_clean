import 'package:latest_app/features/events_swipe/domain/entities/events_swipe.dart';

class EventsSwipeModel extends EventsSwipeEntity {
  const EventsSwipeModel({
    String? id,
    String? name,
    String? description,
    int? participants,
  }) : super(
          id: id,
          name: name,
          description: description,
          participants: participants,
        );

  factory EventsSwipeModel.fromJson(Map<String, dynamic> map) {
    return EventsSwipeModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      participants: map['participants'],
    );
  }
}
