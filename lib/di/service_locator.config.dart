// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../api/client/simple_tv_api_client.dart' as _i7;
import '../api/interceptor/api_interceptor.dart' as _i4;
import '../api/repository/channels_repo.dart' as _i10;
import '../api/repository/sign_in_repo.dart' as _i9;
import '../api/repository/user_packages_repo.dart' as _i8;
import '../data/auth_token_repo.dart' as _i11;
import '../data/user_repo.dart' as _i12;
import 'register_module.dart' as _i13;

const String _dev = 'dev';

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $configureDependencies(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i3.SharedPreferences>(
    () => registerModule.prefs(),
    preResolve: true,
  );
  gh.factory<_i4.ApiInterceptor>(() => _i4.ApiInterceptor());
  gh.singleton<_i5.Dio>(() => registerModule.dio);
  gh.singleton<_i6.FlutterSecureStorage>(() => registerModule.secureStorage);
  gh.singleton<_i7.SimpleTVApiClient>(
      () => registerModule.apiClient(gh<_i5.Dio>()));
  gh.factory<_i8.UserPackagesRepo>(
    () => _i8.UserPackagesRepoImpl(gh<_i7.SimpleTVApiClient>()),
    registerFor: {_dev},
  );
  gh.factory<_i9.SignInRepo>(
    () => _i9.SignInRepoImpl(gh<_i7.SimpleTVApiClient>()),
    registerFor: {_dev},
  );
  gh.factory<_i10.ChannelsRepo>(
    () => _i10.ChannelsRepoImpl(gh<_i7.SimpleTVApiClient>()),
    registerFor: {_dev},
  );
  gh.factory<_i11.AuthTokenRepository>(() =>
      _i11.AuthTokenRepository(secureStorage: gh<_i6.FlutterSecureStorage>()));
  gh.factory<_i12.UserRepository>(
      () => _i12.UserRepository(gh<_i3.SharedPreferences>()));
  return getIt;
}

class _$RegisterModule extends _i13.RegisterModule {}
