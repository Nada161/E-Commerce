import 'package:commerce/view_model/auth_view_model.dart';
import 'package:commerce/view_model/home_view_model.dart';
import 'package:get/get.dart';

class Binings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => HomeViewModel());
  }

}