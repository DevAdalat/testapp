part of '../tdlibjson_api.dart';

class ResendLoginEmailAddressCode extends TdFunction {
  /// Resends the login email address verification code
  const ResendLoginEmailAddressCode();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ResendLoginEmailAddressCode copyWith() => const ResendLoginEmailAddressCode();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resendLoginEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
