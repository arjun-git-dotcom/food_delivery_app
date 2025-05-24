import 'package:food_delivery_app/domain/repository/repostiory.dart';

class NotificationUsecase {
  final Repostiory repostiory;
  NotificationUsecase({required this.repostiory});

  Future<void> call() {
    return repostiory.getNotification();
  }
}
