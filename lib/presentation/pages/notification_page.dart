import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

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
            leading: Image.asset("lib/assets/images/back_button.png"),
            title: Text(
              "Notifications",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              
            ),bottom: PreferredSize(preferredSize: Size.fromHeight(1),child: Divider(
              thickness: 2,
              color: ColorConstants().textfieldColor,),),));
  }
}
