// ignore_for_file: one_member_abstracts
import 'package:injectable/injectable.dart';
import 'package:simple_tv/api/client/simple_tv_api_client.dart';
import 'package:simple_tv/api/models/response_models/package_response.dart';
import 'package:simple_tv/injectable_environments.dart';

abstract interface class UserPackagesRepo {
  Future<PackageResponse> fetchPackages(
    String operatorUid,
    int userId,
    String deviceClass,
  );
}

@Injectable(as: UserPackagesRepo, env: [SimpleTVEnvironments.dev])
class UserPackagesRepoImpl implements UserPackagesRepo {
  UserPackagesRepoImpl(this._client);

  final SimpleTVApiClient _client;

  @override
  Future<PackageResponse> fetchPackages(
    String operatorUid,
    int userId,
    String deviceClass,
  ) =>
      _client.fetchPackages(
        operatorUid: operatorUid,
        userId: userId,
        deviceClass: deviceClass,
      );
}
