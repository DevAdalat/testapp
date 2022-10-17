part of '../tdlibjson_api.dart';

class TerminateAllOtherSessions extends TdFunction {
  /// Terminates all other sessions of the current user
  const TerminateAllOtherSessions();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  TerminateAllOtherSessions copyWith() => const TerminateAllOtherSessions();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'terminateAllOtherSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
