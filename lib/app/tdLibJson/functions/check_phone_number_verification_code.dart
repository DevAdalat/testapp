part of '../tdlibjson_api.dart';

class CheckPhoneNumberVerificationCode extends TdFunction {
  /// Checks the phone number verification code for Telegram Passport
  const CheckPhoneNumberVerificationCode({
    required this.code,
  });

  /// [code] Verification code to check
  final String code;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
      "@extra": extra,
    };
  }

  CheckPhoneNumberVerificationCode copyWith({
    String? code,
  }) =>
      CheckPhoneNumberVerificationCode(
        code: code ?? this.code,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
