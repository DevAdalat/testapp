part of '../tdlibjson_api.dart';

class CreateSecretChat extends TdFunction {

  /// Returns an existing chat corresponding to a known secret chat
  const CreateSecretChat({
    required this.secretChatId,
  });
  
  /// [secretChatId] Secret chat identifier
  final int secretChatId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "secret_chat_id":$secretChatId
}
	""";
  }
  
  CreateSecretChat copyWith({
    int? secretChatId,
  }) => CreateSecretChat(
    secretChatId: secretChatId ?? this.secretChatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'createSecretChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
