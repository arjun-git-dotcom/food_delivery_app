import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/domain/entity/notification_entity.dart';

abstract class NotificationState extends Equatable {}

class NotificationInitial extends NotificationState {
  @override
  List<Object?> get props => [];
}

class NotificationLoaded extends NotificationState {
  final List<NotificationEntity> notifications;
  NotificationLoaded({required this.notifications});
  @override
  List<Object?> get props => [notifications];
}

class NotificationLoading extends NotificationState {
  @override
  List<Object?> get props => [];
}

class NotificationFailure extends NotificationState {
  @override
  List<Object?> get props => [];
}
