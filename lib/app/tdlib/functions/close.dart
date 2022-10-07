part of '../tdlibjson.dart';

class Close extends TdFunction {

  /// Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before initialization
  const Close();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  Close copyWith() => const Close();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'close';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
