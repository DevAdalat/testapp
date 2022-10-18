part of '../tdlibjson_api.dart';

class GetChatMessageByDate extends TdFunction {

  /// Returns the last message sent in a chat no later than the specified date
  const GetChatMessageByDate({
    required this.chatId,
    required this.date,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [date] Point in time (Unix timestamp) relative to which to search for messages
  final int date;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "date": "$date"
  }
	""";
  }
  
  GetChatMessageByDate copyWith({
    int? chatId,
    int? date,
  }) => GetChatMessageByDate(
    chatId: chatId ?? this.chatId,
    date: date ?? this.date,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatMessageByDate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
