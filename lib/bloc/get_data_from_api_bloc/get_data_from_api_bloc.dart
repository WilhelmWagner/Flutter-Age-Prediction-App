import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../constants/constants.dart';

part 'get_data_from_api_event.dart';

part 'get_data_from_api_state.dart';

class GetDataFromApiBloc
    extends Bloc<GetDataFromApiEvent, GetDataFromApiState> {
  GetDataFromApiBloc() : super(GetDataFromApiInitial()) {
    on<FetchAgeEvent>((event, emit) async {
      emit(AgeLoading());

      try {
        // Baue die URL basierend auf dem Vorhandensein eines Ländercodes
        String url = '$apiUrl?name=${event.name}';

        if (event.countryCode != null) {
          url +=
              '&country_id=${event.countryCode}'; // Füge den Ländercode hinzu, falls vorhanden
        }

        final response = await http.get(Uri.parse(url));

        if (response.statusCode == 200) {
          final data = json.decode(response.body);
          final String name = data['name'];
          final int? age = data['age'];
          final int count = data['count'];
          final String? countryId = data['country_id'];

          if (age != null) {
            emit(AgeLoaded(name, age, count, countryId ?? 'N/A'));
          } else {
            emit(AgeError('The name is not available in the desired country'));
          }
        } else {
          emit(AgeError(event.errorMessage));
        }
      } catch (e) {
        emit(AgeError('An error occurred: ${e.toString()}'));
      }
    });

    on<ResetAgeEvent>((event, emit) {
      emit(AgeInitial());
    });
  }
}
