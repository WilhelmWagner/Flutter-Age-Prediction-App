part of 'language_bloc.dart';

sealed class LanguageState {
  final Locale locale;

  const LanguageState(this.locale);
}

class LanguageInitial extends LanguageState {
  LanguageInitial(super.locale);
}

class LanguageChanged extends LanguageState {
  LanguageChanged(super.locale);
}
