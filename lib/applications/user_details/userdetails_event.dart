part of 'userdetails_bloc.dart';

@freezed
class UserdetailsEvent with _$UserdetailsEvent {
  const factory UserdetailsEvent.getCurrentUser({required String id}) = _GetCurrentUser;
}