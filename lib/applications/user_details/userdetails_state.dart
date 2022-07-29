part of 'userdetails_bloc.dart';

@freezed
class UserdetailsState with _$UserdetailsState {
  const factory UserdetailsState(
      {required bool isLoading, required UserModel model,required Option<Either<String,UserModel>> modelDataFailureOrSuccess  }) = _Initial;
  factory UserdetailsState.initial() {
    return   UserdetailsState(modelDataFailureOrSuccess: const None(),
        isLoading: false,
        model: UserModel(
            email: '',
            name: '',
            number: '',
            disable: false,
            date: Timestamp.now()));
  }
}
