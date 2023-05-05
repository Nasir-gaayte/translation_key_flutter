import 'package:get/get.dart';

class UserController extends GetxController {
  String get username => _username.value;
  RxString _username = "UnKnown user".obs;
  void chanageUsername(String value) {
    _username.value = value;
    
  }
}
