part of 'wish_list_bloc.dart';

@freezed
class WishListEvent with _$WishListEvent {
  const factory WishListEvent.add({required WishList model}) = _AddToWishList;
  const factory WishListEvent.getData() = _GetData;
  const factory WishListEvent.remove({required String id}) = _Remove;
  const factory WishListEvent.removeData()=_RemoveData;
}