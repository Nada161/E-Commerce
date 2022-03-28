import 'package:commerce/view_model/auth_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:commerce/widget/custom_text.dart';
import 'package:commerce/widget/custom_text_form.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  var controller = Get.put(AuthViewModel());
 GlobalKey <FormState> _formGlobalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
      ),
      body: Form(
        key: _formGlobalKey,
        child: SingleChildScrollView(
          child: GetBuilder(
            init: AuthViewModel(),
           builder:(_)=> Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * .8,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.grey)]),
                  child: Column(
                    children: [
                      CustomText(
                        text: 'Sign Up',
                        size: 22,
                        isbold: true,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomText(
                        text: 'Name',
                        color: Colors.grey,
                        size: 16,
                        isbold: false,
                      ),
                      CustomTextField(
                        hint: 'Nada',
                        onSave: (value) {
                          controller.name = value;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomText(
                        text: 'Email',
                        color: Colors.grey,
                        size: 16,
                        isbold: false,
                      ),
                      CustomTextField(
                        hint: 'Nada@gmail.com',
                        onSave: (value) {
                          controller.email = value;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomText(
                        text: 'Password',
                        color: Colors.grey,
                        size: 16,
                        isbold: false,
                      ),
                      CustomTextField(
                        hint: '*******',
                        onSave: (value){
                         controller.password=value;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          _formGlobalKey.currentState!.save();
                          if(_formGlobalKey.currentState!.validate()){
                            controller.creatUser();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size.fromWidth(Get.width * .8),
                            primary: Colors.green),
                        child: Text('Sign UP'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
