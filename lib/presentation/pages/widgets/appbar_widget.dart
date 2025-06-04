import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';


class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

 const  AppbarWidget({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Icon(
            Icons.location_on,
            size: 25,
            color: ColorConstants().green,
          ),
          const SizedBox(width: 8), // small spacing
          const Text(
            'ABCD, New Delhi',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 4),
          Icon(
            Icons.keyboard_arrow_down,
            color: ColorConstants().green,
            size: 35,
          ),
        ],
      ),
    );
  }
}
