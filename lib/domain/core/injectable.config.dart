// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../infrastructure/category/category_repository.dart' as _i4;
import '../../infrastructure/products/products_repository.dart' as _i6;
import '../../infrastructure/user/user_repository.dart' as _i8;
import '../category/i_show_category_repo.dart' as _i3;
import '../products/i_show_products_repo.dart' as _i5;
import '../user/i_show_user_repo.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IShowCategoryRepo>(() => _i4.ShowCategoryRepository());
  gh.lazySingleton<_i5.IShowProductsRepo>(() => _i6.ShowProductsRepository());
  gh.lazySingleton<_i7.IShowUserRepo>(() => _i8.ShowUserData());
  return get;
}
