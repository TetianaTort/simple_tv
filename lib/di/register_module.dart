import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_tv/api/client/simple_tv_api_client.dart';
import 'package:simple_tv/api/interceptor/api_interceptor.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio(BaseOptions())
    ..options.sendTimeout = const Duration(milliseconds: 10000)
    ..options.receiveTimeout = const Duration(milliseconds: 10000)
    ..interceptors.add(ApiInterceptor())
    ..interceptors.add(
      PrettyDioLogger(requestHeader: true, requestBody: true),
    );

  @singleton
  SimpleTVApiClient apiClient(Dio dio) => SimpleTVApiClient(dio);

  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
      );

  @preResolve
  Future<SharedPreferences> prefs() async => SharedPreferences.getInstance();
}
