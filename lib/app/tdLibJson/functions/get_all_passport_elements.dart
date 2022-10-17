part of '../tdlibjson_api.dart';

class GetAllPassportElements extends TdFunction {
  /// Returns all available Telegram Passport elements
  const GetAllPassportElements({
    required this.password,
  });

  /// [password] The 2-step verification password of the current user
  final String password;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "password": password,
      "@extra": extra,
    };
  }

  GetAllPassportElements copyWith({
    String? password,
  }) =>
      GetAllPassportElements(
        password: password ?? this.password,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getAllPassportElements';

  @override
  String getConstructor() => CONSTRUCTOR;
}
