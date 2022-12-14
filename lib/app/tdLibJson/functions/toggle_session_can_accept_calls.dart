part of '../tdlibjson_api.dart';

class ToggleSessionCanAcceptCalls extends TdFunction {

  /// Toggles whether a session can accept incoming calls
  const ToggleSessionCanAcceptCalls({
    required this.sessionId,
    required this.canAcceptCalls,
  });
  
  /// [sessionId] Session identifier 
  final int sessionId;

  /// [canAcceptCalls] Pass true to allow accepting incoming calls by the session; pass false otherwise
  final bool canAcceptCalls;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "session_id":$sessionId,
   "can_accept_calls":$canAcceptCalls
}
	""";
  }
  
  ToggleSessionCanAcceptCalls copyWith({
    int? sessionId,
    bool? canAcceptCalls,
  }) => ToggleSessionCanAcceptCalls(
    sessionId: sessionId ?? this.sessionId,
    canAcceptCalls: canAcceptCalls ?? this.canAcceptCalls,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleSessionCanAcceptCalls';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
