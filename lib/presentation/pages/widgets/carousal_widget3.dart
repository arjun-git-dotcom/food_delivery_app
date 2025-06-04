import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class CarousalWidget3 extends StatelessWidget {
  final List<String>item3;
  const CarousalWidget3({required this.item3,super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
                      items: item3.map((item) {
                        return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              item,
                              fit: BoxFit.fill,
                            ));
                      }).toList(),
                      options: CarouselOptions(
                          viewportFraction: 1, autoPlay: true, height: 150));
  }
}