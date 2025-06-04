import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/constants.dart';

class RowWidget3 extends StatelessWidget {
  const RowWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nearby stores',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
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