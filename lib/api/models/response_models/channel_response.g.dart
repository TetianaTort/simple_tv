// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelResponse _$ChannelResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ChannelResponse',
      json,
      ($checkedConvert) {
        final val = ChannelResponse(
          status: $checkedConvert('status', (v) => v as String),
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => ChannelModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChannelResponseToJson(ChannelResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
