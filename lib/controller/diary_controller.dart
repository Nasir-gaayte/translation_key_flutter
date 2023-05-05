import 'package:get/get.dart';
import 'package:my_dialry/models/diary_entry_model.dart';

class DiaryController extends GetxController {
  List<DirayEntry> get dirayEntry => [..._diaryEntry].toList();
  List<DirayEntry> _diaryEntry = <DirayEntry>[].obs;
  String _entryText = "";
  void changeEntryText(String text) {
    _entryText = text;
  }

  void addDairyEntry() {
    if (_entryText != "") {
      String dateString = DateTime.now().toString();
      _diaryEntry.add(DirayEntry(dateString: dateString, content: _entryText));
    }
    _entryText = "";
  }
}
