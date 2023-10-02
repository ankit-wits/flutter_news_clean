import 'package:equatable/equatable.dart';

class EventsSwipeEntity extends Equatable {
  final String? id;
  final String? name;
  final String? description;
  final int? participants;

  const EventsSwipeEntity({
    this.id,
    this.name,
    this.description,
    this.participants,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      description,
      participants,
    ];
  }
}
