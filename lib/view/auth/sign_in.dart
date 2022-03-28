import 'package:commerce/view_model/auth_view_model.dart';
import 'sign_up.dart';
import 'package:commerce/widget/custom_text.dart';
import 'package:commerce/widget/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigniIn extends StatelessWidget {
var controller = Get.put(AuthViewModel());
GlobalKey <FormState> _formGlobalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formGlobalKey,
          child: GetBuilder(
            init: AuthViewModel(),
           builder:(_)=> Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * .6,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.grey)]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Welcom',
                            size: 23,
                            isbold: true,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(SignUp());
                            },
                            child: CustomText(
                              text: 'Sign Up',
                              color: Colors.green,
                              isbold: true,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: 'sign in to continue',
                        color: Colors.grey,
                        size: 16,
                        isbold: false,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomText(
                        text: 'Email',
                        color: Colors.grey,
                        size: 16,
                        isbold: false,
                      ),
                      CustomTextField(
                        hint: 'Nada@gmail.com',
                        onSave: (val){
                          controller.email=val;
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
                        onSave: (val){
                          controller.password=val;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomText(
                        text: 'Forget Password?',
                        size: 16,
                        isbold: true,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          _formGlobalKey.currentState!.save();
                          if(_formGlobalKey.currentState!.validate()){
                            controller.signInUser();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size.fromWidth(Get.width * .8),
                            primary: Colors.green),
                        child: Text('Sign In'),
                      ),
                    ],
                  ),
                ),
                CustomText(
                  text: '_OR_',
                  size: 20,
                  isbold: true,
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: (){
                      controller.googleAccount();
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(color: Colors.black, spreadRadius: .8)
                      ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/512/281/281764.png',
                            width: 30,
                            height: 30,
                          ),
                          CustomText(
                            text: 'Sign In With Google',
                            size: 15,
                            isbold: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(color: Colors.black, spreadRadius: .8)
                      ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/512/733/733547.png',
                            width: 30,
                            height: 30,
                          ),
                          CustomText(
                            text: 'Sign In With facebook',
                            size: 15,
                            isbold: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
