
import 'package:commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  List<String>names=[
    'name1',
    'name2',
    'name3',
    'name4',
    'name5',
  ];
  List<String>images=[
    'assets/3919960.png',
    'assets/3919960.png',
    'assets/3919960.png',
    'assets/3919960.png',
    'assets/3919960.png',
  ];
  List<int>prices=[
    100,
    200,
    300,
    400,
    500,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.separated(
          itemCount: names.length ,
            itemBuilder: (context,index){
            return Container(
              height: 100,
              child: Row(
                children: [
                  Image.asset(images[index],fit: BoxFit.fill,),
                ],
              ),
            );
            }, separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 15,); },),
      ),
    );
  }
}