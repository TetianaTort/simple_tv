// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInDataResponse _$SignInDataResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SignInDataResponse',
      json,
      ($checkedConvert) {
        final val = SignInDataResponse(
          accessToken: $checkedConvert('access_token', (v) => v as String),
          refreshToken: $checkedConvert('refresh_token', (v) => v as String),
          expiresIn: $checkedConvert('expires_in', (v) => v as String),
          operatorUid: $checkedConvert('operator_uid', (v) => v as String),
          operatorName: $checkedConvert('operator_name', (v) => v as String),
          userId: $checkedConvert('user_id', (v) => v as int),
          deviceId: $checkedConvert('device_id', (v) => v as int),
          isMulticastNetwork:
              $checkedConvert('is_multicast_network', (v) => v as bool),
          isBlocked: $checkedConvert('is_blocked', (v) => v as bool),
          tokenType: $checkedConvert('token_type', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'accessToken': 'access_token',
        'refreshToken': 'refresh_token',
        'expiresIn': 'expires_in',
        'operatorUid': 'operator_uid',
        'operatorName': 'operator_name',
        'userId': 'user_id',
        'deviceId': 'device_id',
        'isMulticastNetwork': 'is_multicast_network',
        'isBlocked': 'is_blocked',
        'tokenType': 'token_type'
      },
    );

Map<String, dynamic> _$SignInDataResponseToJson(SignInDataResponse instance) =>
    <String, dynamic>{
      'token_type': instance.tokenType,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
      'operator_uid': instance.operatorUid,
      'operator_name': instance.operatorName,
      'user_id': instance.userId,
      'device_id': instance.deviceId,
      'is_multicast_network': instance.isMulticastNetwork,
      'is_blocked': instance.isBlocked,
    };
