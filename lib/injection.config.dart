// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:e_commerce_app/core/utils/services/app_module.dart' as _i9;
import 'package:e_commerce_app/core/utils/services/firebase_init.dart' as _i5;
import 'package:e_commerce_app/core/utils/services/firebase_service.dart'
    as _i6;
import 'package:e_commerce_app/Features/home/data/repos/product_repo.dart'
    as _i7;
import 'package:e_commerce_app/Features/home/presentation/cubits/product_cubit/product_cubit.dart'
    as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.FirebaseAuth>(() => appModule.auth);
    gh.factory<_i4.FirebaseFirestore>(() => appModule.store);
    await gh.factoryAsync<_i5.FirebaseInitialize>(
      () => appModule.fireService,
      preResolve: true,
    );
    gh.lazySingleton<_i6.FirebaseService>(() => _i6.FirebaseService(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i7.ProductRepo>(
        () => _i7.ProductRepo(gh<_i6.FirebaseService>()));
    gh.factory<_i8.ProductCubit>(() => _i8.ProductCubit(gh<_i7.ProductRepo>()));
    return this;
  }
}

class _$AppModule extends _i9.AppModule {}
