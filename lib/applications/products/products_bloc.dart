import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_n_fresh/domain/products/i_show_products_repo.dart';
import 'package:fresh_n_fresh/domain/products/models/models.dart';
import 'package:injectable/injectable.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';
@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final IShowProductsRepo _iShowProductsRepo;
  ProductsBloc(this._iShowProductsRepo) : super(ProductsState.initial()) {
     on<_GetAllProducts>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          productsFailureOrSuccessOption: none(),
        ),
      );

      final Either<String, List<Products>> productOption =
          await _iShowProductsRepo.getProductsList(filteredLIst: event.filterKey);
      emit(
        productOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            productsFailureOrSuccessOption: Some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
              isLoading: false,
              productsFailureOrSuccessOption: Some(
                right(success),
              ),
              productList: success),
        ),
      );
    });
  }
}
