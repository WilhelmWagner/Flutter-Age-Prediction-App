import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/language_bloc/language_bloc.dart';
import '../constants/constants.dart';
import '../generated/l10n.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.language,
              size: kIconLanguage,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: kSizedBoxBigHeight),
            DropdownButton<Locale>(
              hint: Text(S.of(context).selectLanguage),
              items: const [
                DropdownMenuItem(
                  value: Locale('en'),
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: Locale('de'),
                  child: Text('Deutsch'),
                ),
                DropdownMenuItem(
                  value: Locale('ru'),
                  child: Text('Русский'),
                ),
              ],
              onChanged: (Locale? locale) {
                if (locale != null) {
                  BlocProvider.of<LanguageBloc>(context)
                      .add(ChangeLanguage(locale));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
