// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SignInResponse',
      json,
      ($checkedConvert) {
        final val = SignInResponse(
          status: $checkedConvert('status', (v) => v as String),
          data: $checkedConvert('data',
              (v) => SignInDataResponse.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$SignInResponseToJson(SignInResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
