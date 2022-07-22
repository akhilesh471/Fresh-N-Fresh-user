part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.getAllProducts({required String filterKey}) = _GetAllProducts;
}