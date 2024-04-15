import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_tv/api/models/response_models/package_model.dart';

part 'package_response.g.dart';

@JsonSerializable()
class PackageResponse extends Equatable {
  const PackageResponse({
    required this.status,
    required this.data,
  });

  factory PackageResponse.fromJson(Map<String, dynamic> json) =>
      _$PackageResponseFromJson(json);

  final String status;
  final List<PackageModel> data;

  Map<String, dynamic> toJson() => _$PackageResponseToJson(this);

  @override
  List<Object?> get props => [status, data];
}
