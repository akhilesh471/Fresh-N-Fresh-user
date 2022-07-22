part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({required bool isLoading, required List<Category>categoryList,
  required Option<Either<String,List<Category>>> categoryFailureOrSuccessOption}) = _CategoryList;
  factory CategoryState.initial(){
    return CategoryState(isLoading: false, categoryList: [], categoryFailureOrSuccessOption: None());
  }
}
