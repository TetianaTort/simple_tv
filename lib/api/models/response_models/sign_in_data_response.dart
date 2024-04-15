import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_data_response.g.dart';

@JsonSerializable()
class SignInDataResponse extends Equatable {
  const SignInDataResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresIn,
    required this.operatorUid,
    required this.operatorName,
    required this.userId,
    required this.deviceId,
    required this.isMulticastNetwork,
    required this.isBlocked,
    required this.tokenType,
  });

  factory SignInDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInDataResponseFromJson(json);

  final String tokenType;
  final String accessToken;
  final String refreshToken;
  final String expiresIn;
  final String operatorUid;
  final String operatorName;
  final int userId;
  final int deviceId;
  final bool isMulticastNetwork;
  final bool isBlocked;

  Map<String, dynamic> toJson() => _$SignInDataResponseToJson(this);

  @override
  List<Object?> get props => [
        tokenType,
        accessToken,
        refreshToken,
        expiresIn,
        operatorUid,
        operatorName,
        userId,
        deviceId,
        isMulticastNetwork,
        isBlocked,
      ];
}
