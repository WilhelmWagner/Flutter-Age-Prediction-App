// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(name) =>
      "Dear ${name}, there is a high probability that your age is:";

  static String m1(count) => "Count: ${count} |";

  static String m2(country_id) => "Country: ${country_id} |";

  static String m3(name) => "Name: ${name} |";

  static String m4(age) => "Predicted Age: ${age}";

  static String m5(bonus) => "You receive ${bonus} points";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "ageMessage": m0,
        "count": m1,
        "countryId": m2,
        "enterName": MessageLookupByLibrary.simpleMessage("Enter name"),
        "failedToFetchDataPleaseTryAgain": MessageLookupByLibrary.simpleMessage(
            "Failed to fetch data. Please try again."),
        "fetchAge": MessageLookupByLibrary.simpleMessage("Fetch Age"),
        "goodbye": MessageLookupByLibrary.simpleMessage("Goodbye"),
        "hello": MessageLookupByLibrary.simpleMessage("Hello!"),
        "homeTitle": MessageLookupByLibrary.simpleMessage("Home"),
        "name": m3,
        "pleaseEnterAName":
            MessageLookupByLibrary.simpleMessage("Please enter a name"),
        "predictedAge": m4,
        "reset": MessageLookupByLibrary.simpleMessage("Reset"),
        "selectCountry": MessageLookupByLibrary.simpleMessage("Select Country"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("select Language"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "settingsPage": MessageLookupByLibrary.simpleMessage("settingsPage"),
        "theNameIsNotAvailableInTheDesiredCountry":
            MessageLookupByLibrary.simpleMessage(
                "The name is not available in the desired country."),
        "youReceiveNBouns": m5
      };
}
