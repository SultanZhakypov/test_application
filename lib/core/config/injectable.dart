import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_application/core/config/injectable.config.dart';
import 'package:test_application/core/network/core_api.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureInjection(String environment) =>
    $initGetIt(sl, environment: environment);


@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => CoreApi().dio;
}
