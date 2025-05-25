
import 'package:food_delivery_app/domain/entity/notification_entity.dart';
import 'package:food_delivery_app/domain/repository/repostiory.dart';

class NotificationUsecase {
  final Repostiory repostiory;
  NotificationUsecase({required this.repostiory});

  Stream<List<NotificationEntity>> call() {
    return repostiory.getNotification();
  }
}
