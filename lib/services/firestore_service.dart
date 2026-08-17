import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/event_model.dart';

class FirestoreService {
  final CollectionReference _eventsRef =
  FirebaseFirestore.instance.collection('events');

  Future<void> addEvent(EventModel event) async {
    await _eventsRef.add(event.toMap());
  }

  Stream<List<EventModel>> getEvents() {
    return _eventsRef.orderBy('date').snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => EventModel.fromMap(
          doc.data() as Map<String, dynamic>, doc.id))
          .toList();
    });
  }

  Stream<List<EventModel>> getUserEvents(String userId) {
    return _eventsRef
        .where('userId', isEqualTo: userId)
        .orderBy('date')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => EventModel.fromMap(
          doc.data() as Map<String, dynamic>, doc.id))
          .toList();
    });
  }

  Future<void> updateEvent(String eventId, Map<String, dynamic> data) async {
    await _eventsRef.doc(eventId).update(data);
  }

  Future<void> deleteEvent(String eventId) async {
    await _eventsRef.doc(eventId).delete();
  }
}