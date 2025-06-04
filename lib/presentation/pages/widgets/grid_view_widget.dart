import 'package:flutter/material.dart';

import 'package:food_delivery_app/constants.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2 / 2.5),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (index == 0 ||
                            index == 1 ||
                            index == 2 ||
                            index == 7)
                          Stack(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 2,
                                  child: Image(
                                    image: AssetImage(
                                      imagePaths[index],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 1,
                                  child: Image.asset(
                                      "lib/assets/images/10_percent_off.png"))
                            ],
                          )
                        else
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Card(
                              elevation: 2,
                              child: Image(
                                image: AssetImage(
                                  imagePaths[index],
                                ),
                              ),
                            ),
                          ),
                        Text(
                          itemnames[index],
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        )
                      ],
                    );
                  },
                );
  }
}