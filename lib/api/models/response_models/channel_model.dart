// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_tv/api/models/response_models/logos_model.dart';

part 'channel_model.g.dart';

@JsonSerializable()
class ChannelModel extends Equatable {
  const ChannelModel({
    required this.id,
    required this.name,
    required this.logos,
    required this.resolution,
    this.base64StringUrl =
        'aHR0cHM6Ly9kZW1vLnVuaWZpZWQtc3RyZWFtaW5nLmNvbS9rOHMvZmVhdHVyZXMvc3RhYmxlL3ZpZGVvL3RlYXJzLW9mLXN0ZWVsL3RlYXJzLW9mLXN0ZWVsLmlzbS8ubTN1OA==',
  });

  factory ChannelModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelModelFromJson(json);

  final int id;
  final String name;
  final LogosModel logos;
  final String resolution;
  final String base64StringUrl;

  Map<String, dynamic> toJson() => _$ChannelModelToJson(this);

  @override
  List<Object?> get props => [id, name, logos];

  String decodeUrl() {
    final decodedUrl = utf8.decode(base64.decode(base64StringUrl));
    return decodedUrl;
  }
}
