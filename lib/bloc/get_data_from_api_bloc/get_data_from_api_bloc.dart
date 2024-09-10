import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants/constants.dart';
import '../../services/ageApiService.dart';

part 'get_data_from_api_event.dart';

part 'get_data_from_api_state.dart';

class GetDataFromApiBloc extends Bloc<GetDataFromApiEvent, GetDataFromApiState> {
  final AgeApiService _ageApiService = AgeApiService();

  GetDataFromApiBloc() : super(AgeInitial()) {
    on<FetchAgeEvent>((event, emit) async {
      emit(AgeLoading());

      try {
        // Baue die URL basierend auf dem Vorhandensein eines Ländercodes
        String url = '$apiUrl?name=${event.name}';
        if (event.countryCode != null) {
          url += '&country_id=${event.countryCode}'; // Füge den Ländercode hinzu, falls vorhanden
        }

        final data = await _ageApiService.fetchAge(url);
        final String name = data['name'];
        final int? age = data['age'];
        final int count = data['count'];
        final String? countryId = data['country_id'];

        if (age != null) {
          emit(AgeLoaded(name, age, count, countryId ?? 'N/A'));
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