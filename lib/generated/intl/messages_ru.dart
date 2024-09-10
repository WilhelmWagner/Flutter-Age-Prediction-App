// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(name) =>
      "Уважаемый(ая) ${name}, с большой вероятностью ваш возраст:";

  static String m1(count) => "Кол-во: ${count} |";

  static String m2(country_id) => "Страна: ${country_id}";

  static String m3(name) => "Имя: ${name} |";

  static String m4(age) => "Предполагаемый возраст: ${age}";

  static String m5(bonus) => "Вы получили ${bonus} баллов";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "ageMessage": m0,
        "count": m1,
        "countryId": m2,
        "enterName": MessageLookupByLibrary.simpleMessage("Введите имя"),
        "failedToFetchDataPleaseTryAgain": MessageLookupByLibrary.simpleMessage(
            "Не удалось получить данные. Пожалуйста, попробуйте снова."),
        "fetchAge": MessageLookupByLibrary.simpleMessage("Узнать возраст"),
        "goodbye": MessageLookupByLibrary.simpleMessage("До свидания"),
        "hello": MessageLookupByLibrary.simpleMessage("Привет!"),
        "homeTitle": MessageLookupByLibrary.simpleMessage("Главная"),
        "name": m3,
        "pleaseEnterAName":
            MessageLookupByLibrary.simpleMessage("Пожалуйста, введите имя."),
        "predictedAge": m4,
        "reset": MessageLookupByLibrary.simpleMessage("Сбросить"),
        "selectCountry":
            MessageLookupByLibrary.simpleMessage("Выберите страну"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("Выберите язык"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "settingsPage":
            MessageLookupByLibrary.simpleMessage("Страница настроек"),
        "theNameIsNotAvailable":
            MessageLookupByLibrary.simpleMessage("Имя недоступно."),
        "youReceiveNBouns": m5
      };
}
