part of '../tdlibjson.dart';

class CancelPasswordReset extends TdFunction {

  /// Cancels reset of 2-step verification password. The method can be called if passwordState.pending_reset_date
  const CancelPasswordReset();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  CancelPasswordReset copyWith() => const CancelPasswordReset();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'cancelPasswordReset';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
