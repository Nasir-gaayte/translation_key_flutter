import 'package:get/get.dart';

class Locales extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "change_username": "US Englishs",
          'diary': 'My Diary',
          'add': 'Add',
          'change_user': 'Change the user name',
        },
        'so_So': {
          "change_username": "Afsomaali",
          'diary': 'Balan Maalmeed',
          'add': 'Mid Cusub',
          'change_user': 'Badal Magaca ',
        },
      };
}
