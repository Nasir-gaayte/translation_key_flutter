import 'package:flutter/material.dart';
import 'package:my_dialry/diary_tap_bar_view.dart';
import 'package:get/get.dart';

import 'models/locales.dart';

import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.orange),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lime)),
      home: const DiaryTabBarView(),
      translations: Locales(),
      locale: const Locale("en", "US"),
    );
  }
}
