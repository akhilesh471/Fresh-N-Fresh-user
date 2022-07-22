part of 'authentication_bloc.dart';


@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.signup({required String password,required UserModel model,required File image,required BuildContext context }) = _SignUp;
  const factory AuthenticationEvent.login({required String email, required String password,required BuildContext context})=_Login;
}