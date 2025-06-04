import 'package:flutter/widgets.dart';

class ViewAllImageWidget extends StatelessWidget {
  const ViewAllImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                        child: Image.asset("lib/assets/images/view_all.png")),
                  );
  }
}