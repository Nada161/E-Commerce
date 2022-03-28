import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? text;
  Color? color;
  double? size;
  var isbold;
  Alignment? alignment;
  CustomText({Key? key,this.text,this.color=Colors.black,this.isbold,this.size=18,this.alignment=Alignment.topLeft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        '$text',
        style: TextStyle(
         color: color,
          fontSize: size,
          fontWeight: isbold?FontWeight.bold:FontWeight.normal
        ),
      ),
    );
  }
}
