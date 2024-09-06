import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/get_data_from_api_bloc/get_data_from_api_bloc.dart';
import '../constants/constants.dart';
import '../generated/l10n.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final ValueNotifier<String?> selectedCountryCodeNotifier =
      ValueNotifier<String?>(null);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTheme = AdaptiveTheme.of(context).mode;
    final imagePath = currentTheme.isDark
        ? 'assets/images/chicken_dark.png'
        : 'assets/images/chicken_light.png';

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).homeTitle),
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );
          },
        ),
        actions: <Widget>[
          Transform.scale(
            scale: kTransformScale,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  AdaptiveTheme.of(context).mode.isDark
                      ? Icons.nightlight_round
                      : Icons.wb_sunny,
                  color: AdaptiveTheme.of(context).mode.isDark ? kRed : kYellow,
                ),
                Switch(
                  activeColor: kRed,
                  inactiveThumbColor: const Color(0xff454955),
                  value: AdaptiveTheme.of(context).mode.isDark,
                  onChanged: (value) {
                    value
                        ? AdaptiveTheme.of(context).setDark()
                        : AdaptiveTheme.of(context).setLight();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      // Make the body scrollable when keyboard appears
      body: GestureDetector(
        onTap: () {
          // entfernt die Tastatur wenn der nutzer irgendwo auf dem Bildschirm klickt
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Oberer Bereich für das Bild
              SizedBox(
                height:
                    MediaQuery.of(context).size.height * 0.3, // Dynamische Höhe
                width: double.infinity,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ), // Lädt das Bild aus dem assets-Ordner
              ),
              // Mittlerer Bereich für Formularelemente
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      controller: _controller,
                      decoration:
                          InputDecoration(labelText: S.of(context).enterName),
                    ),
                    const SizedBox(height: kSizedBoxHeight),
                    ValueListenableBuilder<String?>(
                      valueListenable: selectedCountryCodeNotifier,
                      builder: (context, selectedCountryCode, _) {
                        return DropdownButton<String>(
                          hint: Text(selectedCountryCode ??
                              S.of(context).selectCountry),
                          value: selectedCountryCode,
                          items: worldCountries.map((String countryCode) {
                            return DropdownMenuItem<String>(
                              value: countryCode,
                              child: Text(countryCode),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            selectedCountryCodeNotifier.value = newValue;
                          },
                        );
                      },
                    ),
                    const SizedBox(height: kSizedBoxHeight), // Dropdown-Menü
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<GetDataFromApiBloc>(context)
                                .add(ResetAgeEvent());
                            _controller.clear();
                            selectedCountryCodeNotifier.value = null;
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: kWhite,
                            backgroundColor: kBlue,
                          ),
                          child: Text(S.of(context).reset),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Verstecke die Tastatur, wenn der Button gedrückt wird
                            FocusScope.of(context).unfocus();
                            if (_controller.text.isEmpty) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(S.of(context).pleaseEnterAName),
                                duration: const Duration(seconds: 3),
                              ));
                            } else {
                              final name = _controller.text;
                              final countryCode =
                                  selectedCountryCodeNotifier.value;
                              final errorMessage =
                                  S.of(context).failedToFetchDataPleaseTryAgain;
                              BlocProvider.of<GetDataFromApiBloc>(context).add(
                                  FetchAgeEvent(
                                      name, countryCode, errorMessage));
                            }
                          },
                          child: Text(S.of(context).fetchAge),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: BlocBuilder<GetDataFromApiBloc, GetDataFromApiState>(
                    builder: (context, state) {
                      if (state is AgeLoading) {
                        return const CircularProgressIndicator();
                      } else if (state is AgeLoaded) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // Elemente verteilen
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // Zentriere alles horizontal
                          children: [
                            // 1. `ageMessage` oben platzieren
                            Padding(
                              padding: const EdgeInsets.all(kPadding),
                              child: Text(
                                S.of(context).ageMessage(state.name),
                                style: const TextStyle(
                                  fontSize: kFontSize,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            // 2. Spacer für Abstand zwischen Top und Middle
                            const SizedBox(height: kSizedBoxHeight),

                            // 3. `state.age` genau in der Mitte platzieren
                            Text(
                              '${state.age}',
                              style: const TextStyle(
                                fontSize: kFontSizeBiggest,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            // 4. Spacer für Abstand zwischen Middle und Bottom
                            const SizedBox(height: kSizedBoxHeight),

                            // 5. `Row` unten platzieren
                            Padding(
                              padding: const EdgeInsets.all(kPadding),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    S.of(context).name(state.name),
                                    style: const TextStyle(fontSize: kFontSize),
                                  ),
                                  const SizedBox(width: kSizedBoxWidth),
                                  Text(
                                    S.of(context).count(state.count),
                                    style: const TextStyle(fontSize: kFontSize),
                                  ),
                                  const SizedBox(width: kSizedBoxWidth),
                                  Text(
                                    S.of(context).countryId(state.countryId),
                                    style: const TextStyle(fontSize: kFontSize),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      } else if (state is AgeError) {
                        return Text(
                          S
                              .of(context)
                              .theNameIsNotAvailableInTheDesiredCountry,
                          style: const TextStyle(
                              fontSize: kFontSize, color: Colors.red),
                        );
                      }
                      return Container(); // Fallback für leeren Zustand
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
