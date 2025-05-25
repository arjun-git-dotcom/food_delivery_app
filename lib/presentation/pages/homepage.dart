
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/presentation/cubit/notification_cubit/notification_cubit.dart';
import 'package:food_delivery_app/presentation/pages/widgets/search_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Object> itemlist = [
    "lib/assets/images/img1.png",
    ColorConstants().blue
  ];

  List<Color> items = [ColorConstants().textfieldColor];
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

  List<String> item = [
    "lib/assets/images/mithas_bander.png",
    "lib/assets/images/mithas_bander.png"
  ];
  Widget buildItems(String item) {
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

  List<String> imagePaths = [
    "lib/assets/images/food_delivery_image.png",
    "lib/assets/images/medicine_image.png",
    "lib/assets/images/pet_supplies_images.png",
    "lib/assets/images/gifts.png",
    "lib/assets/images/meat.png",
    "lib/assets/images/cosmetics.png",
    "lib/assets/images/stationary.png",
    "lib/assets/images/store_image.png"
  ];

  List<String> itemnames = [
    'Food Delivery',
    "Medicines",
    "Pet Supplies",
    "Gifts",
    "Meat",
    "Cosmetic",
    "Stationary",
    "Stores"
  ];

  List<String> item3 = ["lib/assets/images/crazy_deal.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              size: 25,
              color: ColorConstants().green,
            ),
            Text(
              'ABCD, New Delhi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: ColorConstants().green,
              size: 35,
            )
          ],
        ),
      ),
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
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<NotificationCubit>().getNotifications();
                            Navigator.pushNamed(context, "notificationPage");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Stack(children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image(
                                    image: AssetImage(
                                        'lib/assets/images/bell_icon_2.png')),
                              ),
                              Positioned(
                                  right: 1,
                                  top: -1,
                                  child: Image.asset(
                                      "lib/assets/images/notifications_2.png"))
                            ]),
                          ),
                        ),
                        Positioned(
                            bottom: 8,
                            right: 20,
                            child:
                                Image.asset("lib/assets/images/bell_icon.png"))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  SizedBox(
                    height: 30,
                    width: 40,
                    child: Image(
                        image: AssetImage("lib/assets/images/label_icon.png")),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "What would you like to do today?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
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
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'More',
                    style: TextStyle(
                        color: ColorConstants().green,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: ColorConstants().green,
                    size: 35,
                  )
                ],
              ),
              Text(
                'Top picks for you',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 0.8),
                child: CarouselSlider(
                    items: itemlist.map((item) {
                      return buildItem(item);
                    }).toList(),
                    options: CarouselOptions(
                        height: 200,
                        viewportFraction: 1,
                        autoPlay: true,
                        autoPlayCurve: Curves.fastOutSlowIn)),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider(
                      items: item.map((item) => buildItems(item)).toList(),
                      options: CarouselOptions(
                          height: 200, autoPlay: true, viewportFraction: 0.97)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Craze Deals",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider(
                      items: item3.map((item) {
                        return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              item,
                              fit: BoxFit.fill,
                            ));
                      }).toList(),
                      options: CarouselOptions(
                          viewportFraction: 1, autoPlay: true, height: 150)),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset("lib/assets/images/refer_and_earn.png"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
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
                              fontWeight: FontWeight.w800,fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
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
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    child: Stack(children: [
                      Image.asset("lib/assets/images/freshly_baker.png"),
                      Positioned(
                          bottom: 2,
                          right: 0.1,
                          child: Image.asset(
                              "lib/assets/images/freshly_bakers_items.png"))
                    ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                        child: Image.asset("lib/assets/images/view_all.png")),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
