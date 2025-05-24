
import 'package:equatable/equatable.dart';
abstract class NotificationState extends Equatable {}


class NotificationInitial extends NotificationState{
  @override

  List<Object?> get props => [];
  
}
class NotificationLoaded extends NotificationState {
  final String? image;
  final String? title;
  final String? body;
  final String? timestamp;
  NotificationLoaded(
      {required this.image,
      required this.title,
      required this.body,
      required this.timestamp});
  @override
  List<Object?> get props => [image, title, body, timestamp];
}

class NotificationLoading extends NotificationState {
  @override
  List<Object?> get props => [];
}

class NotificationFailure extends NotificationState {
  @override
  List<Object?> get props => [];
}
