// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_gcaptcha_v3/auth/data/repository/auth_repository_impl.dart'
    as _i6;
import 'package:flutter_gcaptcha_v3/auth/presentation/blocs/captcha/verify_captcha_cubit.dart'
    as _i7;
import 'package:flutter_gcaptcha_v3/core/di/register_modules.dart' as _i8;
import 'package:flutter_gcaptcha_v3/recaptca_config.dart' as _i4;
import 'package:flutter_gcaptcha_v3/recaptcha_keys.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
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
  final registerModules = _$RegisterModules();
  gh.lazySingleton<_i3.Dio>(() => registerModules.dio());
  gh.factory<_i4.RecaptchaConfig>(
      () => _i4.RecaptchaConfig(keys: gh<_i5.RecaptchaKeys>()));
  gh.singleton<_i6.AuthRepositoryImpl>(_i6.AuthRepositoryImpl(gh<_i3.Dio>()));
  gh.factory<_i7.VerifyCaptchaCubit>(
      () => _i7.VerifyCaptchaCubit(gh<_i6.AuthRepositoryImpl>()));
  return getIt;
}

class _$RegisterModules extends _i8.RegisterModules {}
