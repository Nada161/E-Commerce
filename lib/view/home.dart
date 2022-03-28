import 'package:commerce/widget/bottom_nav/screen1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/bottom_nav/screen2.dart';
import '../widget/bottom_nav/screen3.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  List<Widget>screens=[
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  FirebaseAuth auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (val){
          setState(() {
            index=val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home '),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: 'cart '),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Me'),
        ],
      ),
      body: screens[index]
    );
  }
}
