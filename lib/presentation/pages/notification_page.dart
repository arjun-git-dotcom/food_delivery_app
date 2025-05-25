import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/presentation/cubit/notification_cubit/notification_cubit.dart';
import 'package:food_delivery_app/presentation/cubit/notification_cubit/notification_state.dart';
import 'package:timeago/timeago.dart' as timeago;
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("lib/assets/images/back_button.png")),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Notifications",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            thickness: 2,
            color: ColorConstants().textfieldColor,
          ),
        ),
      ),
      body: BlocBuilder<NotificationCubit, NotificationState>(
        builder: (context, state) {
          if (state is NotificationLoaded) {
            print(state.notifications.length);
            return ListView.separated(
              itemCount: state.notifications.length,
              itemBuilder: (context, index) {
                final timestamp =
                    timeago.format(DateTime.parse(state.notifications[index].timestamp!));
                if (state.notifications.isEmpty ||
                    index >= state.notifications.length) {
                  return const SizedBox.shrink();
                }
                return ListTile(
                  leading: state.notifications[index].image != null
                      ? Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Image.network(
                            state.notifications[index].image!,
                            width: 50,
                            height: 50,
                            errorBuilder: (context, error, stackTrace) =>
                                Icon(Icons.image_not_supported),
                          ),
                      )
                      : Icon(Icons.image),
                  title: Text(state.notifications[index].title ?? 'No Title',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(state.notifications[index].body ?? 'No Message',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),),
                      SizedBox(height: 10,),
                      Text(timestamp,style: TextStyle(fontWeight: FontWeight.w200,fontSize: 13),),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
