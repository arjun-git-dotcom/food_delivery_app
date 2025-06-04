import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/constants.dart';

class RowWidget1 extends StatelessWidget {
  const RowWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Trending',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20)),
                      Text(
                        'See all',
                        style: TextStyle(
                            color: ColorConstants().green,
                            fontWeight: FontWeight.w800,
                            fontSize: 15),
                      )
                    ],
                  );
  }
}