part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required bool isLoading,
    required List<Products> productList,
    required Option<Either<String,List<Products>>> productsFailureOrSuccessOption 
  }) = _ProductList;
  factory ProductsState.initial(){
    return const ProductsState(isLoading: false, productList: [], productsFailureOrSuccessOption: None());
  }
}
