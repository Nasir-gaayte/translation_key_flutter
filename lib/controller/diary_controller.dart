import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:my_dialry/models/diary_entry_model.dart';
import 'package:intl/intl.dart';

class DiaryController extends GetxController {
  List<DirayEntry> get dirayEntry => [..._diaryEntry].toList();
  List<DirayEntry> _diaryEntry = <DirayEntry>[].obs;
  String _entryText = "";
  void changeEntryText(String text) {
    _entryText = text;
  }

  void addDairyEntry() {
    if (_entryText != "") {
      initializeDateFormatting();
      DateFormat dateFormat = DateFormat.yMMMMEEEEd(Get.locale.toString());

      String dateString = dateFormat.format(DateTime.now());
      _diaryEntry.add(DirayEntry(dateString: dateString, content: _entryText));
    }
    _entryText = "";
  }

  void deleteEntry(int index) {
    _diaryEntry.removeAt(index);
  }
}
