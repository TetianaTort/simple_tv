// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogosModel _$LogosModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'LogosModel',
      json,
      ($checkedConvert) {
        final val = LogosModel(
          card: $checkedConvert('card', (v) => v as int?),
          legacy: $checkedConvert('legacy', (v) => v as int?),
          normal: $checkedConvert('normal', (v) => v as int?),
          shadow: $checkedConvert('shadow', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LogosModelToJson(LogosModel instance) =>
    <String, dynamic>{
      'card': instance.card,
      'legacy': instance.legacy,
      'normal': instance.normal,
      'shadow': instance.shadow,
    };
