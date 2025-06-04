import 'package:flutter/widgets.dart';

class FreshlyBakersWidget extends StatelessWidget {
  const FreshlyBakersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: SizedBox(
                      child: Stack(children: [
                        Image.asset("lib/assets/images/freshly_baker.png"),
                        Positioned(
                            bottom: 2,
                            right: 0.1,
                            child: Image.asset(
                                "lib/assets/images/freshly_bakers_items.png"))
                      ]),
                    ),
                  );
  }
}