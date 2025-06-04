import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/constants.dart';

class CarousalWidget1 extends StatelessWidget {
  final List<Object> itemlist;
  const CarousalWidget1({required this.itemlist, super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: itemlist.map((item) {
          return buildItem(item);
        }).toList(),
        options: CarouselOptions(
            height: 200,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn));
  }
}

Widget buildItem(dynamic item) {
    if (item is String) {
      return SizedBox(
        height: 200,
        child: Image(
          image: AssetImage(
            item,
          ),
          fit: BoxFit.fill,
        ),
      );
    } else if (item is Color) {
      return Container(
        height: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: item,),
        
      );
    }
    return Container(
      height: 200,
      color: ColorConstants().green,
    );
  }