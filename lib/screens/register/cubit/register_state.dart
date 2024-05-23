part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoadingState extends RegisterState {}

final class RegisterErrorState extends RegisterState {}

final class RegisterOkResponseState extends RegisterState {}

final class LocationPickedState extends RegisterState {
  final GeoPoint?  location;

  LocationPickedState({required this.location});
}
