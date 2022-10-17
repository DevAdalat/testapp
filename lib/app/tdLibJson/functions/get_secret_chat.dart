part of '../tdlibjson_api.dart';

class GetSecretChat extends TdFunction {
  /// Returns information about a secret chat by its identifier. This is an offline request
  const GetSecretChat({
    required this.secretChatId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": secretChatId,
      "@extra": extra,
    };
  }

  GetSecretChat copyWith({
    int? secretChatId,
  }) =>
      GetSecretChat(
        secretChatId: secretChatId ?? this.secretChatId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
