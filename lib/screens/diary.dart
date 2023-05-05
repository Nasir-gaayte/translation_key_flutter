import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_dialry/controller/diary_controller.dart';

class DiaryScreen extends StatelessWidget {
  DiaryScreen({super.key});

  final DiaryController _diaryController = Get.find(tag: 'diary_controller');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 243, 170, 194),
      child: Obx(
        () => _diaryController.dirayEntry.isEmpty
            ? const Text('no diarys ')
            : ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(_diaryController.dirayEntry[index].dateString),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(_diaryController.dirayEntry[index].content)
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 5,
                    ),
                itemCount: _diaryController.dirayEntry.length),
      ),
    );
  }
}
