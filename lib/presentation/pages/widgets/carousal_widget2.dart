import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class CarousalWidget2 extends StatelessWidget {
  final List<String> item;
  const CarousalWidget2({required this.item,super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: item.map((item) => buildItems(item,context)).toList(),
        options: CarouselOptions(
            height: 200, autoPlay: true, viewportFraction: 0.97));
  }
}
  Widget buildItems(String item,context) {
    return SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(item),
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage(item),
                fit: BoxFit.fill,
              )
            ],
          ),
        ));
  }