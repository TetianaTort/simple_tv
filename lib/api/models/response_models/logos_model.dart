import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logos_model.g.dart';

@JsonSerializable()
class LogosModel extends Equatable {
  const LogosModel({
    required this.card,
    required this.legacy,
    required this.normal,
    required this.shadow,
  });

  factory LogosModel.fromJson(Map<String, dynamic> json) => LogosModel(
        card: json['CARD'] as int?,
        legacy: json['LEGACY'] as int?,
        normal: json['NORMAL'] as int?,
        shadow: json['SHADOW'] as int?,
      );

  final int? card;
  final int? legacy;
  final int? normal;
  final int? shadow;

  Map<String, dynamic> toJson() => _$LogosModelToJson(this);

  @override
  List<Object?> get props => [card, legacy, normal, shadow];

  int? getFirstImage() {
    if (card != null) {
      return card;
    }
    if (legacy != null) {
      return legacy;
    }
    if (normal != null) {
      return normal;
    }
    if (shadow != null) {
      return shadow;
    }
    return null;
  }
}
