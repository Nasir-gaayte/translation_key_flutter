import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_dialry/controller/user_controller.dart';
import 'package:my_dialry/screens/change_user_name.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  final UserController _userController =
      Get.put(UserController(), tag: 'user_controller');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 248, 223, 148),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Obx(() => Text(
                _userController.username,
                style: Get.textTheme.headline5,
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale("so_SO"));
                },
                child: const Text('SO'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en_US'));
                },
                child: const Text('ENG'),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const ChangeUserName());
            },
            child: Text('change_username'.tr),
          )
        ],
      ),
    );
  }
}
