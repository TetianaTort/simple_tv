// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInRequest _$SignInRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SignInRequest',
      json,
      ($checkedConvert) {
        final val = SignInRequest(
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          loginType: $checkedConvert(
              'login_type', (v) => v as String? ?? 'Credentials'),
          device: $checkedConvert('device',
              (v) => v as String? ?? 'flutter_test_device_Tetiana_Tortykh'),
        );
        return val;
      },
      fieldKeyMap: const {'loginType': 'login_type'},
    );

Map<String, dynamic> _$SignInRequestToJson(SignInRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'login_type': instance.loginType,
      'device': instance.device,
    };
