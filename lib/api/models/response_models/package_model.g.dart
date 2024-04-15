// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageModel _$PackageModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PackageModel',
      json,
      ($checkedConvert) {
        final val = PackageModel(
          id: $checkedConvert('id', (v) => v as int),
          purchased: $checkedConvert('purchased', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PackageModelToJson(PackageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'purchased': instance.purchased,
    };
