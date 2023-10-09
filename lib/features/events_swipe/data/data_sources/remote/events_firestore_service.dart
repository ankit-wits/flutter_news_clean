import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latest_app/core/constants/constants.dart';
import 'package:latest_app/features/events_swipe/data/models/events_swipe.dart';
import 'package:latest_app/injection_container.dart';

class EventsSwipeFirestoreService {
  final FirebaseFirestore _firestore = sl();

  Future<List<EventsSwipeModel>> getEventsSwipe() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection(eventsCollection).get();
      return snapshot.docs
          .map((doc) => EventsSwipeModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      // Handle errors
      print('Error fetching events: $e');
      return [];
    }
  }

  // Add more methods for Firestore interactions as needed.
}
