import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class RowWidget2 extends StatelessWidget {
  const RowWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'More',
                    style: TextStyle(
                        color: ColorConstants().green,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: ColorConstants().green,
                    size: 35,
                  )
                ],
              );
  }
}