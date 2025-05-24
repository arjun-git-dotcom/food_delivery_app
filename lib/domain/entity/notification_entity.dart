import 'package:equatable/equatable.dart';

class NotificationEntity extends Equatable {
  final String? image;
  final String? title;
  final String? body;
  final String? timestamp;
 const  NotificationEntity(this.image, this.title, this.body, this.timestamp);
  @override
  List<Object?> get props => [image,title,body,timestamp];
}
