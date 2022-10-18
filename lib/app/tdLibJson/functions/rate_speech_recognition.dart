part of '../tdlibjson_api.dart';

class RateSpeechRecognition extends TdFunction {

  /// Rates recognized speech in a voice note message
  const RateSpeechRecognition({
    required this.chatId,
    required this.messageId,
    required this.isGood,
  });
  
  /// [chatId] Identifier of the chat to which the message belongs 
  final int chatId;

  /// [messageId] Identifier of the message 
  final int messageId;

  /// [isGood] Pass true if the speech recognition is good
  final bool isGood;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "message_id": "$messageId",
    "is_good": $isGood
  }
	""";
  }
  
  RateSpeechRecognition copyWith({
    int? chatId,
    int? messageId,
    bool? isGood,
  }) => RateSpeechRecognition(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    isGood: isGood ?? this.isGood,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'rateSpeechRecognition';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
