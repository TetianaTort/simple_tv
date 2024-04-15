import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_model.g.dart';

@JsonSerializable()
class PackageModel extends Equatable {
  const PackageModel({
    required this.id,
    this.purchased,
  });

  factory PackageModel.fromJson(Map<String, dynamic> json) =>
      _$PackageModelFromJson(json);

  final int id;
  final String? purchased;

  Map<String, dynamic> toJson() => _$PackageModelToJson(this);

  @override
  List<Object?> get props => [id, purchased];
}
