import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/domain/usecases/notification_usecase.dart';
import 'package:food_delivery_app/presentation/cubit/notification_cubit/notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final NotificationUsecase notificationUsecase;

  NotificationCubit({required this.notificationUsecase})
      : super(NotificationInitial());

  Future<void> getNotifications() async {
    try {
      await notificationUsecase.call();
    } on SocketException catch (_) {
    } catch (_) {}
  }
}
