import 'package:flutter/foundation.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:food_delivery_app/data/model/notification_model.dart';
import 'package:food_delivery_app/domain/entity/notification_entity.dart';
import 'package:http/http.dart' as http;

class RemoteDataSourceImpl extends RemoteDataSource {
  @override
  Stream<List<NotificationEntity>> getNotification() async* {
    try {
      final response = await http.get(Uri.parse(
          ApiConstants.notificationUrl));

      if (response.statusCode == 200) {
        final notifications = await compute(
            NotificationModel.jsonParser, response.body);
        yield notifications;
      } else {
        throw Exception('Failed to load notification');
      }
    } catch (e) {
      throw Exception('Error $e');
    }
  }
}


