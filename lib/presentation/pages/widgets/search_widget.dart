import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class SearchWidget extends StatefulWidget {
  final String hintText;
  const SearchWidget({required this.hintText, super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
      
        color: ColorConstants().textfieldColor,
        child: Stack(children: [
          TextField(
            
            decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: widget.hintText,
                hintStyle:
                    TextStyle(color: ColorConstants().hintColor, fontSize: 15.5), 
                    ),
          ),
          Positioned(
       right: 3,
          
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                
                  image: AssetImage("lib/assets/images/Vector.png")),
            ),
          )
        ]),
      ),
    );
  }
}
