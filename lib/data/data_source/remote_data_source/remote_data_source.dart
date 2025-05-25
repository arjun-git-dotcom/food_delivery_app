


import 'package:food_delivery_app/domain/entity/notification_entity.dart';

abstract class RemoteDataSource {
  Stream<List<NotificationEntity>> getNotification();
}
