import 'package:flutter/material.dart';

import 'package:food_delivery_app/constants.dart';

import 'package:food_delivery_app/presentation/pages/widgets/appbar_widget.dart';
import 'package:food_delivery_app/presentation/pages/widgets/carousal_widget1.dart';
import 'package:food_delivery_app/presentation/pages/widgets/carousal_widget2.dart';
import 'package:food_delivery_app/presentation/pages/widgets/carousal_widget3.dart';
import 'package:food_delivery_app/presentation/pages/widgets/freshly_bakers_widget.dart';
import 'package:food_delivery_app/presentation/pages/widgets/grid_view_widget.dart';
import 'package:food_delivery_app/presentation/pages/widgets/label_icon_widget.dart';
import 'package:food_delivery_app/presentation/pages/widgets/row_widget1.dart';
import 'package:food_delivery_app/presentation/pages/widgets/row_widget2.dart';
import 'package:food_delivery_app/presentation/pages/widgets/row_widget3.dart';
import 'package:food_delivery_app/presentation/pages/widgets/search_widget.dart';
import 'package:food_delivery_app/presentation/pages/widgets/stack_widget.dart';
import 'package:food_delivery_app/presentation/pages/widgets/view_all_image_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, top: 20, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: SearchWidget(
                    hintText: "Search for products/stores",
                  )),
                  SizedBox(width: 5),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: StackWidget(),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  LabelIconWidget(),
                ],
              ),
              sizedbox(30),
              Text(
                "What would you like to do today?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 200,
                child: GridViewWidget(),
              ),
              RowWidget2(),
              Text(
                'Top picks for you',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              sizedbox(10),
              Padding(
                  padding: const EdgeInsets.only(left: 0.8),
                  child: CarousalWidget1(itemlist: itemlist)),
              sizedbox(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowWidget1(),
                  sizedbox(10),
                  CarousalWidget2(item: item),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Craze Deals",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  sizedbox(10),
                  CarousalWidget3(item3: item3),
                  sizedbox(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset("lib/assets/images/refer_and_earn.png"),
                  ),
                  sizedbox(25),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: RowWidget3(),
                  ),
                  sizedbox(10),
                  FreshlyBakersWidget(),
                  sizedbox(30),
                  FreshlyBakersWidget(),
                  sizedbox(30),
                  ViewAllImageWidget(),
                  sizedbox(30)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
