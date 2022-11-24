part of '../tdlibjson_api.dart';

class TerminateSession extends TdFunction {

  /// Terminates a session of the current user
  const TerminateSession({
    required this.sessionId,
  });
  
  /// [sessionId] Session identifier
  final int sessionId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "session_id":$sessionId
}
	""";
  }
  
  TerminateSession copyWith({
    int? sessionId,
  }) => TerminateSession(
    sessionId: sessionId ?? this.sessionId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'terminateSession';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
