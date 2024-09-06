// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello!`
  String get hello {
    return Intl.message(
      'Hello!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Goodbye`
  String get goodbye {
    return Intl.message(
      'Goodbye',
      name: 'goodbye',
      desc: '',
      args: [],
    );
  }

  /// `You receive {bonus} points`
  String youReceiveNBouns(Object bonus) {
    return Intl.message(
      'You receive $bonus points',
      name: 'youReceiveNBouns',
      desc: '',
      args: [bonus],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `settingsPage`
  String get settingsPage {
    return Intl.message(
      'settingsPage',
      name: 'settingsPage',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homeTitle {
    return Intl.message(
      'Home',
      name: 'homeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Failed to fetch data. Please try again.`
  String get failedToFetchDataPleaseTryAgain {
    return Intl.message(
      'Failed to fetch data. Please try again.',
      name: 'failedToFetchDataPleaseTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Enter name`
  String get enterName {
    return Intl.message(
      'Enter name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Fetch Age`
  String get fetchAge {
    return Intl.message(
      'Fetch Age',
      name: 'fetchAge',
      desc: '',
      args: [],
    );
  }

  /// `Predicted Age: {age}`
  String predictedAge(Object age) {
    return Intl.message(
      'Predicted Age: $age',
      name: 'predictedAge',
      desc: '',
      args: [age],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `select Language`
  String get selectLanguage {
    return Intl.message(
      'select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `The name is not available in the desired country.`
  String get theNameIsNotAvailableInTheDesiredCountry {
    return Intl.message(
      'The name is not available in the desired country.',
      name: 'theNameIsNotAvailableInTheDesiredCountry',
      desc: '',
      args: [],
    );
  }

  /// `Select Country`
  String get selectCountry {
    return Intl.message(
      'Select Country',
      name: 'selectCountry',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a name`
  String get pleaseEnterAName {
    return Intl.message(
      'Please enter a name',
      name: 'pleaseEnterAName',
      desc: '',
      args: [],
    );
  }

  /// `Dear {name}, there is a high probability that your age is:`
  String ageMessage(Object name) {
    return Intl.message(
      'Dear $name, there is a high probability that your age is:',
      name: 'ageMessage',
      desc: '',
      args: [name],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
