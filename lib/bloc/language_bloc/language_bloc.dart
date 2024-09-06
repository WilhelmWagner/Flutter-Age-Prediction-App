import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'language_event.dart';

part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(Locale initialLocale) : super(LanguageInitial(initialLocale)) {
    on<ChangeLanguage>(
      (event, emit) {
        emit(LanguageChanged(event.locale)); // Ändere die Sprache
      },
    );
  }
}
