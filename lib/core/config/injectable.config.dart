// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/home/logic/api_service/home_service.dart' as _i4;
import '../../modules/home/logic/bloc/home_bloc.dart' as _i8;
import '../../modules/home/logic/repository/impl/home_repository.dart' as _i6;
import '../../modules/home/logic/repository/impl/home_repository_impl.dart'
    as _i7;
import '../../modules/home/logic/usecase/home_usecase.dart' as _i5;
import 'injectable.dart' as _i9;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.HomeService>(() => _i4.HomeService(gh<_i3.Dio>()));
  gh.lazySingleton<_i5.HomeUsecase>(
      () => _i5.HomeUsecase(gh<_i4.HomeService>()));
  gh.lazySingleton<_i6.HomeRepository>(
      () => _i7.HomeRepositoryImpl(gh<_i5.HomeUsecase>()));
  gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(gh<_i6.HomeRepository>()));
  return getIt;
}

class _$RegisterModule extends _i9.RegisterModule {}
