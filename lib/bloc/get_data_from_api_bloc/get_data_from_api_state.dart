part of 'get_data_from_api_bloc.dart';

sealed class GetDataFromApiState {}

final class GetDataFromApiInitial extends GetDataFromApiState {}

class AgeInitial extends GetDataFromApiState {}

class AgeLoading extends GetDataFromApiState {}

class AgeLoaded extends GetDataFromApiState {
  final String name;
  final int age;
  final int count;
  final String countryId;

  AgeLoaded(
    this.name,
    this.age,
    this.count,
    this.countryId,
  );
}

class AgeError extends GetDataFromApiState {
  final String message;
  AgeError(this.message);
}
