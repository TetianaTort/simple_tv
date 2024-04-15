import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_tv/api/models/response_models/channel_model.dart';

part 'channel_response.g.dart';

@JsonSerializable()
class ChannelResponse extends Equatable {
  const ChannelResponse({
    required this.status,
    required this.data,
  });

  factory ChannelResponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelResponseFromJson(json);

  final String status;
  final List<ChannelModel> data;

  Map<String, dynamic> toJson() => _$ChannelResponseToJson(this);

  @override
  List<Object?> get props => [status, data];
}
