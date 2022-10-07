part of '../tdlibjson.dart';

class ResendRecoveryEmailAddressCode extends TdFunction {

  /// Resends the 2-step verification recovery email address verification code
  const ResendRecoveryEmailAddressCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ResendRecoveryEmailAddressCode copyWith() => const ResendRecoveryEmailAddressCode();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resendRecoveryEmailAddressCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
