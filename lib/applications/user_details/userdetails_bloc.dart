import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_n_fresh/domain/user/i_show_user_repo.dart';
import 'package:fresh_n_fresh/domain/user/models/model.dart';
import 'package:injectable/injectable.dart';

part 'userdetails_event.dart';
part 'userdetails_state.dart';
part 'userdetails_bloc.freezed.dart';

@injectable
class UserdetailsBloc extends Bloc<UserdetailsEvent, UserdetailsState> {
  final IShowUserRepo _iShowUserRepo;
  UserdetailsBloc(this._iShowUserRepo) : super(UserdetailsState.initial()) {
    on<_GetCurrentUser>((event, emit) async {
      emit(state.copyWith(isLoading: true, modelDataFailureOrSuccess: none()));
      final Either<String, UserModel> modelOption =
          await _iShowUserRepo.getUserData(id: event.id);
      emit(modelOption.fold(
          (failure) => state.copyWith(
              isLoading: false, modelDataFailureOrSuccess: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              modelDataFailureOrSuccess: Some(right(success)),
              model: success)));
    });
  }
}
