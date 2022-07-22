part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({ required bool isLoading,required String image,required UserModel model}) = _AuthenticationState;
  factory AuthenticationState.initial(){
    return AuthenticationState(isLoading: false,image: '',model: UserModel(name: '', number: '', disable: false,date: Timestamp.now(),email: ""));
  }
}
