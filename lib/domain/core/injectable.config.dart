// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../applications/add_to_cart/add_to_cart_bloc.dart' as _i16;
import '../../applications/category/category_bloc.dart' as _i17;
import '../../applications/products/products_bloc.dart' as _i13;
import '../../applications/user_details/userdetails_bloc.dart' as _i14;
import '../../applications/wish_list/wish_list_bloc.dart' as _i15;
import '../../infrastructure/add_to_cart/cart_repository.dart' as _i4;
import '../../infrastructure/category/category_repository.dart' as _i6;
import '../../infrastructure/products/products_repository.dart' as _i8;
import '../../infrastructure/user/user_repository.dart' as _i10;
import '../../infrastructure/wishlist/wishlist_repository.dart' as _i12;
import '../add_to_cart/i_show_cart_repo.dart' as _i3;
import '../category/i_show_category_repo.dart' as _i5;
import '../products/i_show_products_repo.dart' as _i7;
import '../user/i_show_user_repo.dart' as _i9;
import '../wishlist/i_show_wishList_repo.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IShowCartRepo>(() => _i4.ShowCartRepository());
  gh.lazySingleton<_i5.IShowCategoryRepo>(() => _i6.ShowCategoryRepository());
  gh.lazySingleton<_i7.IShowProductsRepo>(() => _i8.ShowProductsRepository());
  gh.lazySingleton<_i9.IShowUserRepo>(() => _i10.ShowUserData());
  gh.lazySingleton<_i11.IShowWishListRepo>(() => _i12.ShowWishListRepository());
  gh.factory<_i13.ProductsBloc>(
      () => _i13.ProductsBloc(get<_i7.IShowProductsRepo>()));
  gh.factory<_i14.UserdetailsBloc>(
      () => _i14.UserdetailsBloc(get<_i9.IShowUserRepo>()));
  gh.factory<_i15.WishListBloc>(
      () => _i15.WishListBloc(get<_i11.IShowWishListRepo>()));
  gh.factory<_i16.AddToCartBloc>(
      () => _i16.AddToCartBloc(get<_i3.IShowCartRepo>()));
  gh.factory<_i17.CategoryBloc>(
      () => _i17.CategoryBloc(get<_i5.IShowCategoryRepo>()));
  return get;
}
