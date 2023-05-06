import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends GetxController {
  String get username => _username.value;
  final RxString _username = 'unknown user'.obs;

  final GetStorage _getStorage = GetStorage();
  @override
  void onInit() {
    _username.value = _getStorage.read('username') ?? 'unknown user';
    super.onInit();
  }

  void chanageUsername(String value) {
    _username.value = value;
    _getStorage.write('username', value);
  }
}
