import 'package:json_annotation/json_annotation.dart';
import 'package:memorymate/model/user.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  bool? success;
  String? accessToken;
  User? data;
  LoginResponse({this.success, this.accessToken, this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
