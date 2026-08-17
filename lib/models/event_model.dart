import 'package:cloud_firestore/cloud_firestore.dart';

class EventModel {
  final String id;
  final String title;
  final String description;
  final String category;
  final DateTime date;
  final String time;
  final String userId;

  EventModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.date,
    required this.time,
    required this.userId,
  });

  factory EventModel.fromMap(Map<String, dynamic> map, String docId) {
    return EventModel(
      id: docId,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      category: map['category'] ?? '',
      date: (map['date'] as Timestamp).toDate(),
      time: map['time'] ?? '',
      userId: map['userId'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'category': category,
      'date': Timestamp.fromDate(date),
      'time': time,
      'userId': userId,
    };
  }

  String get categoryImage {
    switch (category) {
      case 'Social':
        return 'assets/images/category_social.png';
      case 'Sport':
        return 'assets/images/category_sport.png';
      case 'Book club':
        return 'assets/images/category_bookclub.png';
      case 'Pets':
        return 'assets/images/category_pets.png';
      default:
        return 'assets/images/category_social.png';
    }
  }
}