import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_request.g.dart';

@JsonSerializable()
class SignInRequest extends Equatable {
  const SignInRequest({
    required this.username,
    required this.password,
    this.loginType = 'Credentials',
    this.device = 'flutter_test_device_Tetiana_Tortykh',
  });

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);

  final String username;
  final String password;
  final String loginType;
  final String device;

  Map<String, dynamic> toJson() => _$SignInRequestToJson(this);

  @override
  List<Object?> get props => [username, password, loginType, device];
}
