part of '../tdlibjson_api.dart';

class GetLoginUrlInfo extends TdFunction {

  /// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button
  const GetLoginUrlInfo({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
  });
  
  /// [chatId] Chat identifier of the message with the button
  final int chatId;

  /// [messageId] Message identifier of the message with the button 
  final int messageId;

  /// [buttonId] Button identifier
  final int buttonId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "message_id": "$messageId",
    "button_id": "$buttonId"
  }
	""";
  }
  
  GetLoginUrlInfo copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
  }) => GetLoginUrlInfo(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    buttonId: buttonId ?? this.buttonId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getLoginUrlInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
