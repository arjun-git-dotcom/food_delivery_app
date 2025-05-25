import 'package:food_delivery_app/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:food_delivery_app/domain/entity/notification_entity.dart';
import 'package:food_delivery_app/domain/repository/repostiory.dart';

class RepositoryImpl extends Repostiory {
  final RemoteDataSource remoteDataSource;
  RepositoryImpl(this.remoteDataSource);

  @override
  Stream<List<NotificationEntity>> getNotification() {
    return remoteDataSource.getNotification();
  }
}
