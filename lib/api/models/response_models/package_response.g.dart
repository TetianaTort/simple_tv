// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageResponse _$PackageResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PackageResponse',
      json,
      ($checkedConvert) {
        final val = PackageResponse(
          status: $checkedConvert('status', (v) => v as String),
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => PackageModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PackageResponseToJson(PackageResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
