import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_n_fresh/domain/category/i_show_category_repo.dart';
import 'package:fresh_n_fresh/domain/category/models/models.dart';
import 'package:fresh_n_fresh/domain/products/i_show_products_repo.dart';
import 'package:injectable/injectable.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final IShowCategoryRepo _iCategoryRepo;
  CategoryBloc(this._iCategoryRepo) : super(CategoryState.initial()) {
    on<_GetCategoryList>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, categoryFailureOrSuccessOption: none()));

      final Either<String, List<Category>> categoryOption =
          await _iCategoryRepo.getAllCategory();
      emit(categoryOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              categoryFailureOrSuccessOption: Some(left(failure)),
              ),
          (success) => state.copyWith(
              isLoading: false,
              categoryFailureOrSuccessOption: Some(right(success)),
              categoryList: success)));
    });
  }
}
