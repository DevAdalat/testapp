part of '../tdlibjson_api.dart';

class GetActiveSessions extends TdFunction {
  /// Returns all active sessions of the current user
  const GetActiveSessions();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetActiveSessions copyWith() => const GetActiveSessions();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getActiveSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
