import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_dialry/controller/user_controller.dart';

class ChangeUserName extends StatefulWidget {
  const ChangeUserName({super.key});

  @override
  State<ChangeUserName> createState() => _ChangeUserNameState();
}

class _ChangeUserNameState extends State<ChangeUserName> {
  final UserController _userController = Get.find(tag: 'user_controller');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            onChanged: (value) {
              if (value != "") {
                _userController.chanageUsername(value);
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('change_user'.tr))
        ]),
      ),
    );
  }
}
