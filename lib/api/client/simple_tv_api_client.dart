import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:simple_tv/api/client/api_constans.dart';
import 'package:simple_tv/api/models/request_models/sign_in_request.dart';
import 'package:simple_tv/api/models/response_models/channel_response.dart';
import 'package:simple_tv/api/models/response_models/package_response.dart';
import 'package:simple_tv/api/models/response_models/sign_in_response.dart';

part 'simple_tv_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseDomain)
abstract class SimpleTVApiClient {
  factory SimpleTVApiClient(
    Dio dio, {
    String baseUrl,
  }) = _SimpleTVApiClient;

  static const String signIn = '/v2/global/login';

  @POST(signIn)
  Future<SignInResponse> userSignIn(@Body() SignInRequest signInForm);

  @GET('/v1/{operator_uid}/users/{user_id}/packages?device_class={device}')
  Future<PackageResponse> fetchPackages({
    @Path('operator_uid') required String operatorUid,
    @Path('user_id') required int userId,
    @Path('device') required String deviceClass,
  });

  @GET('/v2/{operator_uid}/channels?packages={active_packages}')
  Future<ChannelResponse> fetchChannels({
    @Path('operator_uid') required String operatorUid,
    @Path('active_packages') required String activePackages,
  });
}
