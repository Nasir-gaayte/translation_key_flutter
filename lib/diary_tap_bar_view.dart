import 'package:flutter/material.dart';
import 'package:my_dialry/screens/diary.dart';
import 'package:my_dialry/screens/setting.dart';
import 'package:get/get.dart';

class DiaryTabBarView extends StatefulWidget {
  const DiaryTabBarView({super.key});

  @override
  State<DiaryTabBarView> createState() => _DiaryTabBarViewState();
}

class _DiaryTabBarViewState extends State<DiaryTabBarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'diary'.tr,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Get.bottomSheet(BottomSheet(
                      enableDrag: false,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30))),
                      onClosing: () {},
                      builder: (context) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextField(
                                onChanged: (value) {},
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('add'.tr))
                            ],
                          ),
                        );
                      }));
                },
                icon: const Icon(Icons.add),
              ),
            ],
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.event_note),
              ),
              Tab(
                icon: Icon(Icons.settings),
              )
            ]),
          ),
          body: TabBarView(children: [
            const DiaryScreen(),
            SettingScreen(),
          ]),
        ));
  }
}
