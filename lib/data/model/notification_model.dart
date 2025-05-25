import 'dart:convert';

import 'package:food_delivery_app/domain/entity/notification_entity.dart';

class NotificationModel extends NotificationEntity {
  final String? image;
  final String? title;
  final String? body;
  final String? timestamp;
  const NotificationModel(
      {required this.image,
      required this.title,
      required this.body,
      required this.timestamp})
      : super(image: image, title: title, body: body, timestamp: timestamp);

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
        image: json['image'],
        title: json['title'],
        body: json['body'],
        timestamp: json['timestamp']);
  }

  static List<NotificationModel> jsonParser(String responseBody) {
    final Map<String, dynamic> parsedJson = jsonDecode(responseBody);
    final List notificationsList = parsedJson["data"] ?? [];
    return notificationsList
        .map<NotificationModel>((json) => NotificationModel.fromJson(json))
        .toList();
  }
}
