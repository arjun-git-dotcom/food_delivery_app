import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/cubit/notification_cubit/notification_cubit.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            context.read<NotificationCubit>().getNotifications();
            Navigator.pushNamed(context, "notificationPage");
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image(
                    image: AssetImage('lib/assets/images/bell_icon_2.png')),
              ),
              Positioned(
                  right: 1,
                  top: -1,
                  child: Image.asset("lib/assets/images/notifications_2.png"))
            ]),
          ),
        ),
        Positioned(
            bottom: 8,
            right: 20,
            child: Image.asset("lib/assets/images/bell_icon.png"))
      ],
    );
  }
}
