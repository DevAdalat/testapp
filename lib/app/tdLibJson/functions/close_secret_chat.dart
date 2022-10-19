part of '../tdlibjson_api.dart';

class CloseSecretChat extends TdFunction {
  /// Closes a secret chat, effectively transferring its state to secretChatStateClosed
  const CloseSecretChat({
    required this.secretChatId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "secret_chat_id":$secretChatId
}
	""";
  }

  CloseSecretChat copyWith({
    int? secretChatId,
  }) =>
      CloseSecretChat(
        secretChatId: secretChatId ?? this.secretChatId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'closeSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
