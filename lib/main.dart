// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elprince_learn_flutter/sectionmodel.dart';
import 'package:flutter/material.dart';

import 'package:elprince_learn_flutter/customstack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> favoriteBool = List.generate(5, (index) => false);
  List<Map<String, String>> sectionsList = [
    {"price": "10"},
    {"price": "20"},
    {"price": "30"},
    {"price": "40"},
    {"price": "50"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal, title: Text("MyApp")),
      body: Container(
        child: Center(
          child: Wrap(
            children: List.generate(sectionsList.length, (index) {
              List<SectionInfo> sectionInfoList = sectionsList.map((e) {
                return SectionInfo.fromMap(e);
              }).toList();
              return CustomStack(
                price: sectionInfoList[index].price,
                setFavorite: setFavorite,
                indexBool: index,
                Bool:favoriteBool[index]
              );
            }),
          ),
        ),
      ),
    );
  }

  void setFavorite(index) {
    setState(() {
      favoriteBool[index] = !favoriteBool[index];
    });
  }
}
