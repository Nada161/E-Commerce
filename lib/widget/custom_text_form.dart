import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? hint;
  var controller;
   Function? onSave;
   CustomTextField({Key? key,this.hint,this.onSave,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: (value){
        onSave!(value);
      },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 19,
          fontWeight: FontWeight.bold
        )
      ),
    );
  }
}
