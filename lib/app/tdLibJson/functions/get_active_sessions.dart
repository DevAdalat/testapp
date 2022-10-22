part of '../tdlibjson_api.dart';

class GetActiveSessions extends TdFunction {
  /// Returns all active sessions of the current user
  const GetActiveSessions();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  GetActiveSessions copyWith() => const GetActiveSessions();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getActiveSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
