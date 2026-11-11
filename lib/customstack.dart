// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  String price;
  void Function(int) setFavorite;
  int indexBool;
  bool Bool;
  CustomStack({
    super.key,
    required this.price,
    required this.setFavorite,
    required this.indexBool,
    required this.Bool,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(20),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
          ),
          child: Container(
            alignment: Alignment.center,
            color: Colors.black.withValues(alpha: 0.5),
            width: double.infinity,
            height: 30,
            child: Text(price, style: TextStyle(color: Colors.white)),
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: IconButton(
            onPressed: () {
              setFavorite(indexBool);
            },
            icon: Bool ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          ),
        ),
      ],
    );
  }
}
