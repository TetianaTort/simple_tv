// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelModel _$ChannelModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ChannelModel',
      json,
      ($checkedConvert) {
        final val = ChannelModel(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          logos: $checkedConvert(
              'logos', (v) => LogosModel.fromJson(v as Map<String, dynamic>)),
          resolution: $checkedConvert('resolution', (v) => v as String),
          base64StringUrl: $checkedConvert(
              'base64_string_url',
              (v) =>
                  v as String? ??
                  'aHR0cHM6Ly9kZW1vLnVuaWZpZWQtc3RyZWFtaW5nLmNvbS9rOHMvZmVhdHVyZXMvc3RhYmxlL3ZpZGVvL3RlYXJzLW9mLXN0ZWVsL3RlYXJzLW9mLXN0ZWVsLmlzbS8ubTN1OA=='),
        );
        return val;
      },
      fieldKeyMap: const {'base64StringUrl': 'base64_string_url'},
    );

Map<String, dynamic> _$ChannelModelToJson(ChannelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logos': instance.logos,
      'resolution': instance.resolution,
      'base64_string_url': instance.base64StringUrl,
    };
