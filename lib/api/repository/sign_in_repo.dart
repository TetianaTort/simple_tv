// ignore_for_file: one_member_abstracts
import 'package:injectable/injectable.dart';
import 'package:simple_tv/api/client/simple_tv_api_client.dart';
import 'package:simple_tv/api/models/request_models/sign_in_request.dart';
import 'package:simple_tv/api/models/response_models/sign_in_response.dart';
import 'package:simple_tv/injectable_environments.dart';

abstract interface class SignInRepo {
  Future<SignInResponse> signIn(SignInRequest signInForm);
}

@Injectable(as: SignInRepo, env: [SimpleTVEnvironments.dev])
class SignInRepoImpl implements SignInRepo {
  SignInRepoImpl(this._client);

  final SimpleTVApiClient _client;

  @override
  Future<SignInResponse> signIn(SignInRequest signInForm) =>
      _client.userSignIn(signInForm);
}
