// To parse this JSON data, do
//
//     final authEntity = authEntityFromJson(jsonString);

import 'dart:convert';

/// Converts a JSON string to a [LoginEntity] object.
LoginEntity authEntityFromJson(String str) =>
    LoginEntity.fromJson(json.decode(str));

/// Converts a [LoginEntity] object to a JSON string.
String authEntityToJson(LoginEntity data) => json.encode(data.toJson());

/// Represents the login entity.
class LoginEntity {
  String? email;
  String? password;

  LoginEntity({
    this.email,
    this.password,
  });

  /// Creates a [LoginEntity] object from a JSON map.
  factory LoginEntity.fromJson(Map<String, dynamic> json) => LoginEntity(
        email: json["email"],
        password: json["password"],
      );

  /// Converts the [LoginEntity] object to a JSON map.
  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
