// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(name) =>
      "Liebe/r ${name}, mit großer Wahrscheinlichkeit beträgt dein Alter:";

  static String m1(count) => "Anzahl: ${count} |";

  static String m2(country_id) => "Land: ${country_id}";

  static String m3(name) => "Name: ${name} |";

  static String m4(age) => "Vorhergesagtes Alter: ${age}";

  static String m5(bonus) => "Sie heben ${bonus} punkte";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "ageMessage": m0,
        "count": m1,
        "countryId": m2,
        "enterName":
            MessageLookupByLibrary.simpleMessage("Gib deinen Namen ein"),
        "failedToFetchDataPleaseTryAgain": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Abrufen der Daten. Bitte versuche es erneut."),
        "fetchAge": MessageLookupByLibrary.simpleMessage("Alter abrufen"),
        "goodbye": MessageLookupByLibrary.simpleMessage("Tschuss"),
        "hello": MessageLookupByLibrary.simpleMessage("Hallo!"),
        "homeTitle": MessageLookupByLibrary.simpleMessage("Start Seite"),
        "name": m3,
        "pleaseEnterAName": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie einen Namen ein."),
        "predictedAge": m4,
        "reset": MessageLookupByLibrary.simpleMessage("Neustart"),
        "selectCountry": MessageLookupByLibrary.simpleMessage("Land wählen"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Sprache wählen"),
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "settingsPage": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "theNameIsNotAvailableInTheDesiredCountry":
            MessageLookupByLibrary.simpleMessage(
                "Name im Land nicht vorhanden."),
        "youReceiveNBouns": m5
      };
}
