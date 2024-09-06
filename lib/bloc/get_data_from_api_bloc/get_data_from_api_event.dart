part of 'get_data_from_api_bloc.dart';

sealed class GetDataFromApiEvent {}

class FetchAgeEvent extends GetDataFromApiEvent {
  final String name;
  final String? countryCode;
  final String errorMessage;


  FetchAgeEvent(this.name, this.countryCode, this.errorMessage);
}

class ResetAgeEvent extends GetDataFromApiEvent {}
