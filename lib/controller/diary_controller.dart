import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:my_dialry/models/diary_entry_model.dart';
import 'package:intl/intl.dart';

class DiaryController extends GetxController {
  List<DirayEntry> get dirayEntry => [..._diaryEntry].toList();
  final RxList<DirayEntry> _diaryEntry = <DirayEntry>[].obs;
  String _entryText = "";
  final GetStorage _getStorage = GetStorage();
  @override
  void onInit() {
    final List<dynamic> list = _getStorage.read('diary_entry') ?? [];
    List<DirayEntry> data = [];
    for (var element in list) {
      final String date = element['dateTime'];
      final String content = element['content'];
      data.add(DirayEntry(dateString: date, content: content));
    }

    _diaryEntry.value = data;
    super.onInit();
  }

  void changeEntryText(String text) {
    _entryText = text;
  }

  void addDairyEntry() {
    if (_entryText != "") {
      initializeDateFormatting();
      DateFormat dateFormat = DateFormat.yMMMMEEEEd(Get.locale.toString());

      String dateString = dateFormat.format(DateTime.now());
      _diaryEntry.add(DirayEntry(dateString: dateString, content: _entryText));

      List data = [];
      for (DirayEntry dirayEntry in _diaryEntry) {
        data.add({
          'dateTime': dirayEntry.dateString,
          'content': dirayEntry.content,
        });
      }

      _getStorage.write('diary_entry', data);
    }
    _entryText = "";
  }

  void deleteEntry(int index) {
    _diaryEntry.removeAt(index);
  }
}
