import 'package:flutter/material.dart';

class ColorConstants {
  Color hintColor = const Color.fromARGB(255, 158, 153, 153);
  Color green = const Color.fromARGB(255, 126, 206, 128);
  Color textfieldColor = const Color.fromARGB(247, 239, 234, 234);
  Color blue = const Color.fromARGB(255, 107, 107, 212);
}

class PageConstants {
  static const String notificationPage = "notificationPage";
}

class ApiConstants {
  static const notificationUrl =
      "https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json";
}

List<Object> itemlist = ["lib/assets/images/img1.png", ColorConstants().blue];

List<Color> items = [ColorConstants().textfieldColor];

List<String> item = [
  "lib/assets/images/mithas_bander.png",
  "lib/assets/images/mithas_bander.png"
];

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

sizedbox(double x) {
  return SizedBox(
    height: x,
  );
}
