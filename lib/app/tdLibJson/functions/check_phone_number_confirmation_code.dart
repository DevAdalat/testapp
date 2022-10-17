part of '../tdlibjson_api.dart';

class CheckPhoneNumberConfirmationCode extends TdFunction {
  /// Checks phone number confirmation code
  const CheckPhoneNumberConfirmationCode({
    required this.code,
  });

  /// [code] Confirmation code to check
  final String code;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
      "@extra": extra,
    };
  }

  CheckPhoneNumberConfirmationCode copyWith({
    String? code,
  }) =>
      CheckPhoneNumberConfirmationCode(
        code: code ?? this.code,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
