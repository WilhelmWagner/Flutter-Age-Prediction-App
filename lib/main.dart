import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:check_you_age/screens/home_screen.dart';
import 'package:check_you_age/theme_data/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'bloc/get_data_from_api_bloc/get_data_from_api_bloc.dart';
import 'bloc/language_bloc/language_bloc.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Locale systemLocale = View.of(context).platformDispatcher.locale;

    return AdaptiveTheme(
      light: kLightTheme,
      dark: kDarkTheme,
      debugShowFloatingThemeButton: false,
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MultiBlocProvider(
        providers: [
          BlocProvider<GetDataFromApiBloc>(
            create: (context) => GetDataFromApiBloc(),
          ),
          BlocProvider<LanguageBloc>(
            create: (context) => LanguageBloc(systemLocale), // System-`Locale` an LanguageBloc übergeben
          ),
        ],
        child: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, state) {
            return MaterialApp(
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: state.locale,  // Nutze die vom BLoC verwaltete Sprache
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: theme,
              darkTheme: darkTheme,
              home: HomeScreen(),
            );
          },
        ),
      ),
    );
  }
}

