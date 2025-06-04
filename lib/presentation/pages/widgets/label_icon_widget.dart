import 'package:flutter/widgets.dart';

class LabelIconWidget extends StatelessWidget {
  const LabelIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                    height: 30,
                    width: 40,
                    child: Image(
                        image: AssetImage("lib/assets/images/label_icon.png")),
                  );
  }
}