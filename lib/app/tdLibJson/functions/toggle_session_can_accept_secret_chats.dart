part of '../tdlibjson_api.dart';

class ToggleSessionCanAcceptSecretChats extends TdFunction {

  /// Toggles whether a session can accept incoming secret chats
  const ToggleSessionCanAcceptSecretChats({
    required this.sessionId,
    required this.canAcceptSecretChats,
  });
  
  /// [sessionId] Session identifier 
  final int sessionId;

  /// [canAcceptSecretChats] Pass true to allow accepring secret chats by the session; pass false otherwise
  final bool canAcceptSecretChats;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "session_id":$sessionId,
   "can_accept_secret_chats":$canAcceptSecretChats
}
	""";
  }
  
  ToggleSessionCanAcceptSecretChats copyWith({
    int? sessionId,
    bool? canAcceptSecretChats,
  }) => ToggleSessionCanAcceptSecretChats(
    sessionId: sessionId ?? this.sessionId,
    canAcceptSecretChats: canAcceptSecretChats ?? this.canAcceptSecretChats,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleSessionCanAcceptSecretChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
