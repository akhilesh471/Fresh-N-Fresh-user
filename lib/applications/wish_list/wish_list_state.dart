part of 'wish_list_bloc.dart';

@freezed
class WishListState with _$WishListState {

  const factory WishListState({required bool isLoading, required List<WishList> favorite,required Option<Either<String,List<WishList>>>wishListFailureOrSuccessOption })=_WishListState;
   factory WishListState.initial(){return WishListState(isLoading: false,favorite: [],wishListFailureOrSuccessOption: None());}
}
