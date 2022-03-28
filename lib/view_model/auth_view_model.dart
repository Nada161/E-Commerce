import '../view/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController{
late  String name,email,password;
  FirebaseAuth auth =FirebaseAuth.instance;

GoogleSignIn googleSignIn= GoogleSignIn(scopes: ['email']);
  creatUser()async {
    try{
      await auth.createUserWithEmailAndPassword(
          email: email, password:password);
      Get.to(Home());

    }catch(e){
      Get.snackbar('Error', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 3)
      );
    }
  }

  signInUser()async {
    try{
      await auth.signInWithEmailAndPassword(
          email: email, password: password);
      Get.to(Home());
    }catch(e){
      Get.snackbar('Error', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 3)
      );

    }
  }
void googleAccount()async{
    await googleSignIn.signIn();
    Get.to(Home());
}

}