part of '../tdlibjson.dart';

class RecognizeSpeech extends TdFunction {

  /// Recognizes speech in a voice note message. The message must be successfully sent and must not be scheduled. May return an error with a message "MSG_VOICE_TOO_LONG" if the voice note is too long to be recognized
  const RecognizeSpeech({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }
  
  RecognizeSpeech copyWith({
    int? chatId,
    int? messageId,
  }) => RecognizeSpeech(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'recognizeSpeech';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
